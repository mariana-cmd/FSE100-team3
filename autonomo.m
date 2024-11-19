
brick.SetColorMode(1, 2);

color = brick.ColorCode(1);

distance = brick.UltrasonicDist(3);

touch = brick.TouchPressed(4);


 while 1

     distance = brick.UltrasonicDist(3);

    touch = brick.TouchPressed(4);

    color = brick.ColorCode(1);

     brick.MoveMotor('AB', -40);

if color == 5
    brick.StopAllMotors();
    pause(3);
    brick.MoveMotor('AB', -40);
end 
  

if distance > 50  %right
    brick.MoveMotor('A', -35);
    brick.MoveMotor('B', 35); 
    pause(2);
end 

if touch 
   
    brick.StopMotor('AB');
    pause(1);
    brick.MoveMotor('AB', 20);
    pause(1);
    brick.MoveMotor('A', 35);
    brick.MoveMotor('B', -35);
    pause(1);
end 

if color == 2 || color == 4 || color == 3
    brick.StopAllMotors();
    run('Remotecontrol.m');
end 


 end 









