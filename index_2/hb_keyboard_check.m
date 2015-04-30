% this Keyboard Check Function is necessary! for week5 codes
% hb_keyboard_check.m

function [abcdefg] = hb_keyboard_check(anykey)

PsychDefaultSetup(2);

esc_key = KbName('ESCAPE');
pass_key = KbName('LeftShift');

exit_value = 0;
while exit_value == 0
    [my_key_down, my_key_RT, pressed_key] = KbCheck;
    if pressed_key(esc_key)
        try
            sca; exit_value = 1; clear all;
            result = 'User pressed esc key'
        catch
            exit_value = 1; Screen('CloseAll');
            result = 'User pressed esc key'
        end
    
    elseif pressed_key(pass_key)
        clear pressed_key;
        break;
    end
end
end
