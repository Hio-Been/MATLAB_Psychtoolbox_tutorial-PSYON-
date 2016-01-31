% week5_sr_4_ImageStim.m

%%%%%%%%%%%%%%%%%% screen_4_ImageStim %%%%%%%%%%%%%%%%%%%%
clc; clear all; Screen('Preference', 'SkipSyncTests', 2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% (1) Open Window
background_Color=[0,0,0];
screen_Size=[0 0 800 800];
[win, rect] = Screen('OpenWindow', 0, background_Color, screen_Size);

% (2) Draw matrix image
%% White box (brightness = 255)
position_1 = [100 100 100+100 100+100];
image_file_1 = 255 * ones(100,100); 
image_variable_1 = Screen(win, 'MakeTexture', image_file_1);

%% Image read and flip it
position_2 = [];
image_file_2 = imread('sampleImg.png');
image_file_2_resized = imresize(image_file_2, [200 200]);
image_variable_2 = Screen(win, 'MakeTexture', image_file_2_resized);

%% Rotated image
image_file_2_rotated = imrotate(image_file_2_resized, rotation_angle);
position_3 = [rect(3:4)*.5 + 200, rect(3:4)*.5 + 400];
rotation_angle= 90; % 90 degree
image_variable_3 = Screen(win, 'MakeTexture', image_file_2_rotated);


% Draw images on screen 'win'
Screen('DrawTexture',win,image_variable_1,[],position_1)
Screen('DrawTexture',win,image_variable_2,[],position_2);
Screen('DrawTexture',win,image_variable_3,[],position_3);

% Show it 
Screen('Flip', win);
hb_keyboard_check;

Screen('CloseAll');
