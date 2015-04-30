% week5_scr_2_FillRect.m

%%%%%%%%%%%%%%%%%% screen_2_FillRect %%%%%%%%%%%%%%%%%%%%
clc; clear all; Screen('Preference', 'SkipSyncTests', 2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

magnification_factor = 2;

background_Color=[127 127 127];
screen_Size= magnification_factor * [0 0 0+500 0+500];
[win, rect] = PsychImaging('OpenWindow', 0, background_Color, screen_Size);
 
% [ keyIsDown, seconds, keyCode ] = KbCheck; % check for keypress
% Screen('FillRect', win, white);
 
square1_Color =  [0 0 255];  
square1_Size = magnification_factor * [0 0 250 250];
square2_Color =  [255 0 0];
square2_Size = magnification_factor * [250 250 500 500];

Screen('FillRect', win, square2_Color, square1_Size);
Screen('FillRect', win, square1_Color, square2_Size);
Screen('Flip', win);% present to the screen. This is the command toactually present whatever you have made 'win'
hb_keyboard_check; pause(0.1);  


Screen('FillRect', win, [0 0 0], square1_Size);
Screen('FillRect', win, [255 255 255], square2_Size);
Screen('Flip', win);% present to the screen. This is the command toactually present whatever you have made 'win'
hb_keyboard_check;

Screen('CloseAll');
 
