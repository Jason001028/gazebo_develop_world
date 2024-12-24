# Patrol Package

ROS package for autonomous patrol functionality.

## Dependencies
- ROS Noetic
- Python 3
- PyYAML
- move_base
- tf

## Installation
```bash
# Create catkin workspace if not exists
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src

# Clone the package
git clone <your-repo-url>/patrol_pkg.git

# Install dependencies
rosdep install --from-paths . --ignore-src -r -y

# Build
cd ~/catkin_ws
catkin_make

