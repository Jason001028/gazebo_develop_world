Header header

float64 latitude  # 纬度
float64 longitude  # 经度
float64 altitude  # 高度

float64 latitude_variance  # 纬度的方差
float64 longitude_variance  # 经度的方差
float64 altitude_variance # 高度的方差

# 速度
geometry_msgs/Twist vel

# 加速度
geometry_msgs/Vector3 accel

# 姿态 (x, y, z)分别对应(roll, pitch, yall)
# 说明：yall - 蘑菇天线左右安装时，朝北为0，顺时针数值增大
geometry_msgs/Vector3 posture
