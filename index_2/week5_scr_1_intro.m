% week5_scr_1_intro.m

%%%%%%%%%%%%%%%%%% screen_1_intro %%%%%%%%%%%%%%%%%%%%
clc; clear all; Screen('Preference', 'SkipSyncTests', 2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% (1) Variable Setting
background_Color=[ 127 127 127]; % Red, Green, Blue
screen_Size=[       % size = [ 0, 0, 1000, 500 ]
    0,              % X Start point (0 : Left Upper)
    0,              % Y Start point (0 : Left Upper)
    1000,           % Number of pixels (X length)
    500];           % Number of pixels (Y length)

% (2) Open Window
[win,rect] = Screen('OpenWindow', 0, background_Color, screen_Size);
message = 'Press ESC to quit!';

Screen(win, 'TextSize', 50);
Screen(win, 'DrawText', message,...
    rect(3)/3, rect(4)/2,[0 0 0]);
Screen(win, 'Flip')
% (3) Wait Keyboard and Close window  
hb_keyboard_check; % ESC -> exit
Screen('CloseAll');  
 