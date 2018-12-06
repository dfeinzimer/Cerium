Authors: 	David Feinzimer <dfeinzimer@csu.fullerton.edu>
Version:	11.29.18.1


Setup:
	1) Ensure correct 'roshost' value
	2) Ensure correct 'camera' value
	3) Run:
			roscore
			python3 ~/TitanRover2019/controls/mobility/baseESC.py
			roslaunch rosbridge_server rosbridge_websocket.launch
			~/Cerium/Web
				python -m SimpleHTTPServer


Problems & Solutions:
	Motion displaying gray screen with error message:
		1) Add 'modprobe bcm2835-v4l2' to /etc/rc.local
		2) Or simply run 'sudo modprobe bcm2835-v4l2'
	Server already running error:
		Find existing SimpleHTTPServer process id with 'lsof -i :8000'
		Kill it with 'sudo kill -9 PID'
	Rosbridge not installed:
		1) Clone into catkin_ws
			cd ~/catkin_ws/src
			git clone https://github.com/RobotWebTools/rosbridge_suite.git
		2) Build
			cd ~/catkin_ws
			catkin_make
		3) Source
			source ~/ros_catkin_ws/devel/setup.bash
	Topic monitoring:
		1) Run 'rostopic echo /mobility_topic'
	Uploading:
		1) Run 'sudo scp -r Web/ pi@192.168.1.242:~/Cerium'


Dependencies & Related Helpful Articles:
	rosbridge_server
		http://wiki.ros.org/rosbridge_server
	roslbjs
		https://github.com/RobotWebTools/roslibjs
		http://library.isr.ist.utl.pt/docs/roswiki/rosbridge(2f)Tutorials(2f)Using(20)Javascript(20)to(20)control(20)ROS(20)via(20)rosjs.html


Deprecated Setup:
		1) Run:
				roscore
				rostopic pub /listener std_msgs/String "Hello, World"
				rostopic echo /cmd_vel
				rosrun rospy_tutorials add_two_ints_server
				roslaunch rosbridge_server rosbridge_websocket.launch
				python -m SimpleHTTPServer
		2) Update 'roshost' value
		3) Update 'camera' value
