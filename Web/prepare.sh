# Requires http://wiki.ros.org/rosbridge_server

echo "Preparing Titan Rover Cerium"
echo "roscore"
echo "rostopic pub /listener std_msgs/String "Hello, World""
echo "rostopic echo /cmd_vel"
echo "rosrun rospy_tutorials add_two_ints_server"
echo "roslaunch rosbridge_server rosbridge_websocket.launch"
echo "Update ros host value: ~ line 45"
echo "Update video host value: ~ line 184"
echo "python -m SimpleHTTPServer"

#gnome-terminal --tab
#roscore

# gnome-terminal --tab
# rostopic pub /listener std_msgs/String "Hello, World"

# gnome-terminal --tab
# rostopic echo /cmd_vel

# gnome-terminal --tab
# rosrun rospy_tutorials add_two_ints_server

# gnome-terminal --tab
# roslaunch rosbridge_server rosbridge_websocket.launch

# gnome-terminal --tab
# python -m SimpleHTTPServer
