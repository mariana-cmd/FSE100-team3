%%remote control

global key
InitKeyboard();

while 1 
    pause(0.1);
    switch key
        case 'w'        %%forward
            brick.MoveMotor('AB', 50);
            pause(1);

        case 'a'        %%left
            brick.MoveMotorAngleRel('AB', 20, 90, 'Brake');
            brick.WaitForMotor('');
            pause(1);

        case 's'        %%reverse
            brick.MoveMotor('AB', -50);

        case 'd'        %%right
            brick.MoveMotorAngleRel('AB', 20, -90, 'Brake');
            brick.WaitForMotor('');
            pause(1);

        case 'enter' %%break
            brick.StopAllMotors(1);

        case 'q' %%quit
            break;
    end 
end 

           
