function msg = sendMessage(pub, x, theta)
msg = rosmessage('geometry_msgs/Twist');
msg.Linear.X = x;
msg.Angular.Z = theta;
send(pub,msg);
end

