% week5_sr_4_ImageStim.m

%%%%%%%%%%%%%%%%%% screen_4_ImageStim %%%%%%%%%%%%%%%%%%%%
clc; clear all; Screen('Preference', 'SkipSyncTests', 2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% (1) Open Window
background_Color=[0,0,0];
screen_Size=[];
[win, rect] = Screen('OpenWindow', 0, background_Color, screen_Size);

% (2) Draw matrix image
position_1 = [500 100 500+100 100+100];
image_file_1 = 255 * ones(100,100); 
image_variable_1 = Screen(win, 'MakeTexture', image_file_1);

position_2 = [200 300 1200 800];
image_file_2 = imread('sample.jpg');
image_variable_2 = Screen(win, 'MakeTexture', image_file_2);
 
% (3) Image 1
Screen('DrawTexture',win,image_variable_1,[],position_1)
Screen('Flip', win);
hb_keyboard_check; pause(0.1);

% (4) Image 2
Screen('DrawTexture',win,image_variable_2,[],position_2);
Screen('Flip', win);
hb_keyboard_check;

Screen('CloseAll');
