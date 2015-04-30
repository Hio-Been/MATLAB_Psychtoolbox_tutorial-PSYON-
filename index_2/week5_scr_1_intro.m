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
Screen('OpenWindow', 0, background_Color, screen_Size);

% (3) Wait Keyboard and Close window  
hb_keyboard_check;
Screen('CloseAll');  
