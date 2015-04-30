% week5_scr_3_TextStim.m

%%%%%%%%%%%%%%%%%% screen_3_TextStim %%%%%%%%%%%%%%%%%%%%
clc; clear all; Screen('Preference', 'SkipSyncTests', 2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% (1) Open Window
background_Color=[0,0,0];
background_Color=[255,255,255];


screen_Size=[200 200 1200 800];
[win, rect] = Screen('OpenWindow', 0, background_Color, screen_Size);

% (2) Draw Text Message and Flip it
message = 'Hello, World!';

Screen(win, 'TextSize', 50);
Screen(win, 'DrawText', message,...
    rect(3)/3, rect(4)/2,[0 0 0]);



%DrawFormattedText(win, message,'center','center',[255 255 255]);
Screen('Flip', win);

hb_keyboard_check;

% (3) Wait for keyboard to exit
%keydown = 0;
%while keydown == 0
%    keydown = KbCheck;
%end
Screen('CloseAll');
