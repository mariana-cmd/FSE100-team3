
brick.SetColorMode(2, 2);

color = brick.ColorCode(2);


 while 1 

if color == 5
    brick.StopMotor('AB');
    pause(1);
end 
  
if color == 2 
    brick.StopMotor('AB');
    pause(1);
    brick.beep();
    brick.beep();
end 

if color == 3
    brick.StopMotor('AB');
    pause(1);
    brick.beep();
    brick.beep();
    brick.beep();
end 

 end 









