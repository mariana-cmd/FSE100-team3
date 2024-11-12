brick.ResetMotorAngle('A');
brick.ResetMotorAngle('B');

forward = brick.MoveMotor('AB', 50);

frontTouch = brick.touchPressed(port1); 

leftTouch = brick.touchPressed(port2);

rightDistance = brick.UltrasonicDist(port);


if frontTouch == 1
    brick.StopAllMotors('Coast');
    pause(1);
    brick.MoveMotor('A', 20);
    brick.MoveMotor('B', -20);
else
        forward;
end 

if leftTouch == 1 
    brick.StopAllMotors('Coast');
    pause(1);
    brick.MoveMotor('AB', 50);
    brick.MoveMotor('A', -20);
    brick.MoveMotor('B', 20);
    forward;
else 
    forward;
end 
 

for rightDistance < 5
    brick.StopAllMotors('Coast');
    pause(0.5);
    brick.MoveMotor('B', 0);
    brick.MoveMotor('A', 20);
end 

brick.setColorMode(port, 2);

color = brick.ColorCode(port);


if color == 5
    brick.StopAllMotors('Brake');
    pause(5);
    forward;
end 
    
if color == 2 || color == 3 || color == 4
        run('Remotecontrol.m');
end








