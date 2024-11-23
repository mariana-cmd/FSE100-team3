
brick.SetColorMode(1, 2);

color = brick.ColorCode(1);

distance = brick.UltrasonicDist(3);

touch = brick.TouchPressed(4);


 while 1

     distance = brick.UltrasonicDist(3);

    touch = brick.TouchPressed(4);

    color = brick.ColorCode(1);

     brick.MoveMotor('AB', -45);

if color == 5
    brick.StopAllMotors();
    pause(3);
    brick.MoveMotor('AB', -45);
end 

if distance < 4 
    brick.MoveMotor('AB', 50);
    pause(1);
    brick.MoveMotor('A', 40);
    brick.MoveMotor('B', -40);
end 
  

if distance > 65  %right
    pause(1.2);
    brick.MoveMotor('A', -35);
    brick.MoveMotor('B', 35); 
    pause(1.4);
    brick.MoveMotor('AB', -55);
    pause(1.55);
end 




if touch 
    brick.StopMotor('AB');
    pause(0.1);
    brick.MoveMotor('AB', 40);
    pause(2);
    brick.MoveMotor('A', 30);
    brick.MoveMotor('B', -30);
    pause(1.5);
end 


if color == 2 || color == 4 || color == 3
    brick.StopAllMotors();
    run('Remotecontrol.m');
end 


 end 









