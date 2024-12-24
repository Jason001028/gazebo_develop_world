#ifndef RADIOCOMM_H
#define RADIOCOMM_H

#include <QCoreApplication>
#include <QObject>
#include <QTimer>
#include <QUdpSocket>
#include <QFile>
#include <ros/ros.h>
#include "car_monitor/CarRank.h"
#include "car_monitor/Goal.h"
#include <std_msgs/Bool.h>
#include <sstream>

class RadioComm : public QObject
{
  Q_OBJECT
public:
  explicit RadioComm(QObject *parent = nullptr);
  void sendRankMessage(const car_monitor::CarRank& rank_msg);
  void sendGoalMessage(const car_monitor::Goal& goal_msg);
  void sendEstopMessage(const std_msgs::Bool& estop_msg);
  void sendCorrectXYMessage(const car_monitor::Goal& msg);

private:
  void _goalCallback(const car_monitor::Goal::ConstPtr &msg);
  void _lockWheelCallback(const std_msgs::Bool::ConstPtr &msg);
  void _straightCallback(const std_msgs::Bool::ConstPtr &msg);
  void _processData(std::string strHeadData, std::vector<std::string> msg_str, QByteArray msg_recv);
  void _readCarName();

  void test();

private slots:
  void _timeoutSlot();
  void _readyReadSlot();

private:
  QTimer *_timer;
  QUdpSocket *_udpSocket;

  QHostAddress _multiAddress = QHostAddress("224.0.1.2");
  qint16 _multiPort = 9999;
  bool if_straight_global = false;
  QString _carName;
  const QString CAR_NAME_FILE_ABSOLUTE_PATH = "/home/hk/.config/autofleet/car_name.txt";

  ros::NodeHandle _nodeHandle;
  ros::Publisher _rankPublisher;
  ros::Publisher _goalPublisher;
  ros::Publisher _estopPublisher;
  ros::Subscriber _goalSubscriber;
  ros::Subscriber _lockWheelSubscriber;
  ros::Subscriber _straightSubscriber;
  ros::Publisher _correctXYPublisher;
};

#endif // RADIOCOMM_H

