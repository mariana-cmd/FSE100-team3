% brick = ConnectBrick('PDAWG');
%%remote control (manual)

global key
InitKeyboard();

brick.ResetMotorAngle('A');
brick.ResetMotorAngle('B');


while 1 
    pause(0.1);
    switch key
        % disp(key);
        case 'w'        %%forward
            brick.MoveMotor('AB', -50)

        case 'a'        %%left
            brick.MoveMotor('A', 40)
            brick.MoveMotor('B', -40)

        case 's'        %%reverse
            brick.MoveMotor('AB', 50)

        case 'd'        %%right
            brick.MoveMotor('B', 40)
            brick.MoveMotor('A', -40)
           
        case 'j' %%breakmotor
            brick.StopAllMotors('Coast')

        case 'p' %%pickup
            brick.MoveMotorAngleRel('C', 10, -45, 'Coast')
            brick.WaitForMotor('C')

        case 'r' %%dropoff
            brick.MoveMotorAngleRel('C', 10, 50, 'Coast')
            brick.WaitForMotor('C')

        case 'q' %%quit
            brick.StopAllMotors('Brake')
            break;
        case 'y' 
            run('autonomo.m');
    end 
end 

CloseKeyboard();

           
