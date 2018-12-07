from subprocess import call
call(["ls", "-l"])
print("Received")
call(["rostopic", "pub", "mobility_topic/joystick"])
print("Done")

rostopic pub /mobility_topic mobility_topic/joystick '{header:  {seq: 0, stamp: 202154, frame_id: Titan Rover}, mobility: {ForwardY: 0, TurningX: 0}, arm: {J1: 0, J2: 0, J3: 0, J4: 0, J51: 0, J52: 0 }, mode: {mode: 0}}'

rostopic pub /mobility_topic mobility_topic/joystick

rostopic pub /cmd_vel geometry_msgs/Twist '{linear:  {x: 0.1, y: 0.2, z: 0.3}, angular: {x: -0.1, y: -0.2, z: -0.3}}'
