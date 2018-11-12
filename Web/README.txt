Requires http://wiki.ros.org/rosbridge_server

Update ros host value: ~ line 45
Update video host value: ~ line 184

roscore
rostopic pub /listener std_msgs/String \"Hello, World\"
rostopic echo /cmd_vel
rosrun rospy_tutorials add_two_ints_server
roslaunch rosbridge_server rosbridge_websocket.launch
python -m SimpleHTTPServer

Troubleshooting
	Motion grey sceen
		Add modprobe bcm2835-v4l2 to /etc/rc.local or 				simply run sudo modprobe bcm2835-v4l2 
	Server already running
		Find old server process id with lsof -i :8000
		Kill with sudo kill -9 PID
