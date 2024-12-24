#ifndef ALLSTRUCTS_H
#define ALLSTRUCTS_H

#include <QString>

#pragma pack(1)  //单字节对齐

//GPS点结构体
struct Gps{
  //单位：弧度
  double latitude;  //纬度
  double longitude;  //经度
};

//GPS系统状态
struct GPS_SYSTEM_STATE{
  int gpsWeek;
  double gpsTime;
  double heading;
  double pitch;
  double roll;
  double gyroX;
  double gyroY;
  double gyroZ;
  double accX;
  double accY;
  double accZ;
  double latitude;
  double longitude;
  double altitude;
  double ve;
  double vn;
  double vu;
  double v;
  int nsv1;
  int nsv2;
  int status;
  int age;
  int warning;
};

//skydroid SBUS->UART后16个通道结构体
struct ROCKER_CONTROL{
  quint8 frame_head;
  quint16 channelNum[16];//16个通道。暂定用三个。通道1：左右、通道三：前后、通道五：是否急停。其他的以后直接拿来使用。
  quint8 frame_flag;
  quint8 checkbit;
};

//车辆顺序设置
struct CAR_RANK{
  quint16 frame_head = 0xffff;
  quint8 frame_flag = 0x01;
//  quint16 data_len = 201;
  quint8 count;
//  char names[10][20];
  quint8 car_id[10];
  quint8 checkbit;
  quint8 stopbit = 'X';
};

//车辆顺序设置回复
struct CAR_RANK_REPLAY{
  quint16 frame_head = 0xffff;
  quint8 frame_flag = 0xA1;
  quint16 data_len = 1;
  quint8 flag;
  quint8 checkbit;
  quint8 stopbit = 'X';
};

//开始/终止任务
struct START_ABORT_MISSION{
  quint16 frame_head = 0xffff;
  quint8 frame_flag = 0x02;
  quint16 data_len = 1;
  quint8 type;
  quint8 checkbit;
  quint8 stopbit = 'X';
};

//切换模式
struct SWITCH_MODE{
  quint16 frame_head = 0xffff;
  quint8 frame_flag = 0x03;
  quint16 data_len = 1;
  quint8 mode;
  quint8 checkbit;
  quint8 stopbit = 'X';
};

//目标点
struct GOAL{
  quint16 frame_head = 0xffff;
  quint8 frame_flag = 0x04;
  quint16 data_len = 36;
  char receiver_name[20];
  double goal_x;
  double goal_y;
  quint8 checkbit;
  quint8 stopbit = 'X';
};

//紧急停车
struct EMERGENCY_STOP{
  quint16 frame_head = 0xffff;
  quint8 frame_flag = 0x05;
  quint16 data_len = 1;
  quint8 type;
  quint8 checkbit;
  quint8 stopbit = 'X';
};

//操控端到机器车端的报文结构
struct CONSOLE_TO_CAR{
  quint8 frame_head[3] = {'O','C','U'};
  quint8 frame_flag = 0x01;
  quint8 data_len = 0x07;
  quint8 state_change;
  quint8 work_mode;
  quint8 state_start_stop;
  quint16 straight_speed;
  quint16 angular;
  quint8 checkbit;
  quint8 stopbit = 0xEE;
};

//机器车端到操控端的报文结构
struct CAR_TO_CONSOLE{
  quint8 frame_head[3] = {'R','C','U'};
  quint8 frame_flag = 0x01;
  quint8 data_len = 0x11;
  quint8 car_id;
  quint8 work_mode;
  quint16 straight_speed;
  quint16 angular;
  quint8 longitude_type;
  float longitude_value;
  quint8 latitude_type;
  float latitude_value;
  quint8 electric;
  quint8 checkbit;
  quint8 stopbit = 0xEE;
};

#endif // ALLSTRUCTS_H
