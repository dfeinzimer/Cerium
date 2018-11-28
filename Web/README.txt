Authors: 	David Feinzimer <dfeinzimer@csu.fullerton.edu>
Version:	11.16.18.07


Setup:
	1) Run:
			roscore
			rostopic pub /listener std_msgs/String "Hello, World"
			rostopic echo /cmd_vel
			rosrun rospy_tutorials add_two_ints_server
			roslaunch rosbridge_server rosbridge_websocket.launch
			python -m SimpleHTTPServer
	2) Update 'roshost' value
	3) Update 'camera' value


Troubleshooting:
	Motion displaying gray screen with error message:
		1) Add modprobe bcm2835-v4l2 to /etc/rc.local
		2) Or simply run sudo modprobe bcm2835-v4l2
	Server already running error:
		Find old server process id with lsof -i :8000
		Kill with sudo kill -9 PID
	Rosbridge not installed:
		1) Clone into catkin_ws
			cd ~/catkin_ws/src
			git clone https://github.com/RobotWebTools/rosbridge_suite.git
		2) Build
			cd ~/catkin_ws
			catkin_make
		3) Source
			source ~/ros_catkin_ws/devel/setup.bash

			rostopic echo /mobility_topic


Dependencies:
	Requires http://wiki.ros.org/rosbridge_server
