% Sterowanie złożonymi układami mechanicznymi
% Sprawozdanie 1
% Agnieszka Opałka, AiR, 2018/2019

clear all;
pub = rospublisher('/turtle1/cmd_vel','geometry_msgs/Twist');
sub = rossubscriber('/turtle1/pose');
for j = 1:1:100
	sendMessage(pub,3,pi/2); 
	msg = receive(sub);
	hold on;
	drawnow;
	plot(sub.LatestMessage.X, sub.LatestMessage.Y,'b.');
	daspect([10 10 10])
end
