#include "../include/radiocomm.h"
#include "../include/allstructs.h"
#include <QString>
#include <cstring>
#include <string>
#include <iostream>
using namespace std;

/*
 电台之间传输的数据格式为“class|data1|data2|data3|”；
*/

RadioComm::RadioComm(QObject *parent) : QObject(parent)
{
    qDebug() << "RadioComm reverse side starting...";
    
    // 1. 初始化基础组件
    _timer = new QTimer(this);
    _udpSocket = new QUdpSocket(this);
    _readCarName();

    // 2. UDP套接字配置(保持不变)
    _udpSocket->setSocketOption(QAbstractSocket::MulticastLoopbackOption, 1);
    _udpSocket->bind(QHostAddress::AnyIPv4, _multiPort, QUdpSocket::ShareAddress);
    bool result = _udpSocket->joinMulticastGroup(_multiAddress);

    if(result) {
        connect(_udpSocket, &QUdpSocket::readyRead, this, &RadioComm::_readyReadSlot);
        qDebug() << "UDP multicast setup successful";
    } else {
        qDebug() << "Failed to join multicast group";
    }

    // 3. ROS通信设置
    // 原订阅者改为发布者
    _rankPublisher = _nodeHandle.advertise<car_monitor::CarRank>("/car_rank", 10);
    _goalPublisher = _nodeHandle.advertise<car_monitor::Goal>("/goal", 10);
    _estopPublisher = _nodeHandle.advertise<std_msgs::Bool>("/e_stop", 10);
    _correctXYPublisher = _nodeHandle.advertise<car_monitor::Goal>("/correct_xy", 10);

    // 原发布者改为订阅者
    _goalSubscriber = _nodeHandle.subscribe("/successor_goal", 10, 
        &RadioComm::_goalCallback, this);
    _lockWheelSubscriber = _nodeHandle.subscribe("/lock_wheel", 10,
        &RadioComm::_lockWheelCallback, this);
    _straightSubscriber = _nodeHandle.subscribe("/if_straight", 10,
        &RadioComm::_straightCallback, this);

    // 4. 定时器设置(保持不变)
    connect(_timer, &QTimer::timeout, this, &RadioComm::_timeoutSlot);
    _timer->start(50);  // 20Hz

    qDebug() << "RadioComm reverse side initialization completed";
}



//用于分割电台传输的字符串
//数据格式："class|data1|data2|";class用于区别信号类型
//其中class:包括car_rank、e_stop、successor_goal
vector<string> split(string strTime)
{
    vector<string> result;
    string temp("");
    for(size_t i = 0; i < strTime.size(); i++)
    {
        if(strTime[i] == '|')
        {
            result.push_back(temp);
            temp = "";
        }
        else
            temp += strTime[i];
    }
    return result;
}

vector <string> readFile(QString path){
    QByteArray t ;
    QString str_car_rank;
    QFile file(path);
    if(file.open(QIODevice::ReadOnly | QIODevice::Text))
    {
        while(!file.atEnd())
        {
            t += file.readLine();
        }
        str_car_rank = QString(t);
        file.close();
    }
    return split(str_car_rank.toUtf8().toStdString());
}

template <class Type>
Type stringToNum(const string& str){
    istringstream iss(str);
    Type num;
    iss>> num;
    return num;
}

void writeFile(QString path, QByteArray data){
    QFile file(path);
    if(file.open(QIODevice::WriteOnly | QIODevice::Truncate | QIODevice::Text)){
        file.write(data);
        file.close();
    }
}


void RadioComm::sendRankMessage(const car_monitor::CarRank& rank_msg)
{
    std::vector<std::string> car_name = rank_msg.car_rank;

    string tmp_str;
    tmp_str += "car_rank|";
    for(int i = 0; i < car_name.size(); i++){
        tmp_str += car_name[i]+"|";
    }
    QByteArray byte_str = QString::fromStdString(tmp_str).toUtf8();

    if(_udpSocket->writeDatagram(byte_str.data(), byte_str.size(), _multiAddress, _multiPort)>0)
        qDebug()<<"rank write is ok";
    else
    {
        qDebug()<<_udpSocket->error();
        qDebug()<<"rank write is failed";
    }

    writeFile("~/.config/autofleet/car_rank.txt",byte_str);
}

void RadioComm::sendGoalMessage(const car_monitor::Goal& goal_msg)
{
    string str_tmp = "successor_goal|";
    str_tmp += goal_msg.receiver_name+"|";
    str_tmp += to_string(goal_msg.x)+"|";
    str_tmp += to_string(goal_msg.y)+"|";
    str_tmp += to_string(goal_msg.yaw) + "|";
    if(_carName == "1"){
        if(goal_msg.if_straight){
            str_tmp += to_string(int(1)) + "|";
        }else{
            str_tmp += to_string(int(0)) + "|";
        }
    }else{
        if(if_straight_global){
            str_tmp += to_string(int(1)) + "|";
        }else{
            str_tmp += to_string(int(0)) + "|";
        }
    }
    QByteArray byte_str = QString::fromStdString(str_tmp).toUtf8();

    if(_udpSocket->writeDatagram(byte_str.data(), byte_str.size(), _multiAddress, _multiPort)>0)
        qDebug()<<"goal write is ok";
    else
    {
        qDebug()<<_udpSocket->error();
        qDebug()<<"goal write is failed";
    }
}

void RadioComm::sendEstopMessage(const std_msgs::Bool& estop_msg)
{
    string str_tmp = "e_stop|";
    str_tmp += to_string(int(estop_msg.data))+"|";
    QByteArray byte_str = QString::fromStdString(str_tmp).toUtf8();

    if(_udpSocket->writeDatagram(byte_str.data(), byte_str.size(), _multiAddress, _multiPort)>0)
        return;
    else
    {
        qDebug()<<_udpSocket->error();
        qDebug()<<"estop write is failed";
    }
}

void RadioComm::sendCorrectXYMessage(const car_monitor::Goal& msg)
{
    string str_tmp = "correct_goal|";
    str_tmp += msg.receiver_name+"|";
    str_tmp += to_string(msg.x)+"|";
    str_tmp += to_string(msg.y)+"|";

    QByteArray byte_str = QString::fromStdString(str_tmp).toUtf8();

    if(_udpSocket->writeDatagram(byte_str.data(), byte_str.size(), _multiAddress, _multiPort)>0)
        qDebug()<<"correctgoal write is ok";
    else
    {
        qDebug()<<_udpSocket->error();
        qDebug()<<"correctgoal write is failed";
    }
}


void RadioComm::test(){
  string str_tmp = "test|";
  str_tmp += to_string(int(1))+"|";
  QByteArray byte_str =QString::fromStdString(str_tmp).toUtf8();

  //组播到其他电台
  if(_udpSocket->writeDatagram(byte_str.data(), byte_str.size(), _multiAddress, _multiPort)>0) //向特定IP发送, writeDatagram发送成功返回字节数，否则-1
      qDebug()<<"test is ok";
  else
  {
      qDebug()<<_udpSocket->error(); //可调用error()函数，查看bind不成功的原因
      qDebug()<<"estop write is failed";
  }
}
void RadioComm::_timeoutSlot()
{
  if(!ros::ok()) qApp->quit();
  //接收订阅的话题
//  test();
  ros::spinOnce();
}


void RadioComm::_processData(string strHeadData, vector<string> msg_str, QByteArray msg_recv)
{
    if(strHeadData == "car_rank"){ 
        // 构造并发布车辆顺序消息
        car_monitor::CarRank rank_msg;
        for(size_t i = 1; i < msg_str.size(); i++) {
            if(!msg_str[i].empty()) {
                rank_msg.car_rank.push_back(msg_str[i]);
            }
        }
        _rankPublisher.publish(rank_msg);
        
        // 保持原有的文件写入操作
        writeFile("~/.config/autofleet/car_rank.txt", msg_recv);

    } else if(strHeadData == "successor_goal"){ 
        // 构造目标点消息
        car_monitor::Goal goal;
        qDebug() << "Received successor_goal";

        // 保持原有的数据转换逻辑
        goal.receiver_name = msg_str[1];
        goal.x = stringToNum<double>(msg_str[2]);
        goal.y = stringToNum<double>(msg_str[3]);
        goal.yaw = stringToNum<double>(msg_str[4]);

        cout << "Received goal - receiver:" << goal.receiver_name 
             << " x:" << goal.x 
             << " y:" << goal.y << endl;

        // 发布目标点消息
        _goalPublisher.publish(goal);

    } else if(strHeadData == "e_stop"){ 
        // 构造并发布紧急停车消息
        std_msgs::Bool estop_msg;
        estop_msg.data = (stringToNum<int>(msg_str[1]) == 1);
        
        // 发布紧急停车消息
        _estopPublisher.publish(estop_msg);

    } else if(strHeadData == "correct_goal"){
        // 构造并发布校正目标点消息
        car_monitor::Goal correct_msg;
        correct_msg.x = stringToNum<double>(msg_str[2]);
        correct_msg.y = stringToNum<double>(msg_str[3]);
        _correctXYPublisher.publish(correct_msg);

        // 保持原有的文件写入操作
        string str = msg_str[2] + " " + msg_str[3];
        QString temp = QString::fromStdString(str);
        QString path = "//home//hk//.config//autofleet//correctxy.txt";
        QFile file(path);
        file.open(QIODevice::WriteOnly);
        file.write(temp.toLatin1());
        file.close();
    }
}




void RadioComm::_readyReadSlot()
{
    //*****read the data******
    qDebug()<<"readyReadSlot receive data ";
    QByteArray msg_recv;
    QHostAddress targetAddress;         //从目标IP读数据
    quint16 targerPort;                 //从目标端口读取数据

    vector<string> msg_str;            //QByteArray->string[]

    while(_udpSocket->hasPendingDatagrams()){
        msg_recv.resize(_udpSocket->pendingDatagramSize());   //预分配容量
        _udpSocket->readDatagram(msg_recv.data(),msg_recv.size(),&targetAddress,&targerPort);   //UDP读取数据

        //先分割msg消息,判断消息类型
        msg_str = split(msg_recv.toStdString());

        //处理接收的数据
//        qDebug()<<"before _processData";
        _processData(msg_str[0], msg_str, msg_recv);

    }
}

//回调函数
void RadioComm::_goalCallback(const car_monitor::Goal::ConstPtr &msg)
{
    // 构造并发送目标点消息
    car_monitor::Goal goal_msg;
    goal_msg.receiver_name = msg->receiver_name;
    goal_msg.x = msg->x;
    goal_msg.y = msg->y;
    goal_msg.yaw = msg->yaw;
    goal_msg.if_straight = msg->if_straight;
    
    // 调用发送函数
    sendGoalMessage(goal_msg);
}

void RadioComm::_lockWheelCallback(const std_msgs::Bool::ConstPtr &msg)
{
    // 构造并发送紧急停车消息
    std_msgs::Bool estop_msg;
    estop_msg.data = msg->data;
    
    // 调用发送函数
    sendEstopMessage(estop_msg);
}

void RadioComm::_straightCallback(const std_msgs::Bool::ConstPtr &msg)
{
    // 更新全局直行标志
    if_straight_global = msg->data;
}


void RadioComm::_readCarName()
{
  QFile file(CAR_NAME_FILE_ABSOLUTE_PATH);
  if(!file.open(QIODevice::ReadOnly)){
    qDebug()<<"小车名字的文件打开失败!";
    return;
  }

  QString line;
  line = file.readLine();
  if(!line.isEmpty()){
    _carName = line.trimmed();
  }
}

int main(int argc, char** argv)
{
    // 1. 初始化ROS节点
    ros::init(argc, argv, "car_monitor_node");
    
    // 2. 初始化Qt应用
    QCoreApplication app(argc, argv);
    
    // 3. 创建RadioComm实例
    RadioComm radioComm;
    
    // 4. 输出启动信息
    ROS_INFO("Car Monitor node started. Waiting for messages...");
    
    // 5. 进入Qt事件循环
    return app.exec();
}


/*
加入到组播组  joinMulticastGroup
            例子：mSocket->joinMulticastGroup(QHostAddress("224.0.0.100"));

退出组播组    leaveMulticastGroup
            例子： mSocket->leaveMulticastGroup(QHostAddress("224.0.0.100"));

各编码转换
QString -> QByteArray      QString.toUtf8();
QByteArray -> std::string  QByteArray.toStdString();
std::string -> char *        string.date();
C++ string -> QString        QString q_str = QString::fromStdString(c_str);
double->string                double n = atof(s.c_str());
string->double                 double n = atof(s.c_str());
string->char[]              rec_name.copy(car_name,rec_name.size(),0);
*/

/*
接收的数据帧：

- CAR_RANK
- GOAL
- EMERGENCY_STOP

发送的数据帧：

- GOAL

- EMERGENCY_STOP

接收的话题：

| 话题名称        | 消息类型          | 说明             |
| --------------- | ----------------- | ---------------- |
| /car_rank       | CarRank（自定义） | 车辆顺序         |
| /successor_goal | Goal（自定义）    | 后继车辆的目标点 |
| /e_stop         | std_msgs::Bool    | 全体紧急停车     |

发布的话题：

| 话题名称    | 消息类型       | 说明     |
| ----------- | -------------- | -------- |
| /goal       | Goal（自定义） | 目标点   |
| /lock_wheel | std_msgs::Bool | 锁定车轮 |

写入的文件：

`~/.config/autofleet/car_rank.txt`（车辆顺序）

*/
