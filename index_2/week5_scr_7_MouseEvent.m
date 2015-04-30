% week5_scr_7_MouseEvent.m

% Clear the workspace
sca; clear all; Screen('Preference', 'SkipSyncTests', 2);

% Get the screen numbers
backgrd_color = [0 0 0]; 
white = [255 255 255];
black = [0 0 0];
backgrd_size = [0 0 800 800];

hb_size = 100;

hb_size_2 = 50;

% Open an on screen window
[win, rect] = Screen('OpenWindow', 0, backgrd_color, backgrd_size);

x_list = [];
y_list = [];
while ~KbCheck      
%for i = 1:1:100
    % Get the current position of the mouse
    [x, y, buttons] = GetMouse(win);
    buttons

    % Draw a white dot where the mouse is
    Screen('FillRect', win, white, [x-hb_size, y-hb_size, x+hb_size, y+hb_size]);
    Screen('FillRect', win, black, [x-hb_size_2, y-hb_size_2, x+hb_size_2, y+hb_size_2]);
    %Screen('DrawDots', win, [x y], hb_size*2 , hb_color);
    
    % Flip to the screen
    Screen('Flip', win);
end

% Clear the screen
sca; close all; clear all;
