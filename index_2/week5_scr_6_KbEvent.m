% week5_scr_6_KbEvent.m

% 1. Press ESC to exit
% 2. Press arrow key (left, right, up, down) to move the box



% Clear the workspace
close all; clear all; sca; Screen('Preference', 'SkipSyncTests', 2 );
PsychDefaultSetup(2);
% Here we call some default settings for setting up Psychtoolbox

% Open an on screen window
[win, windowRect] = PsychImaging('OpenWindow', 0, [0 0 0],...
        []);
        %[100 100 500 500]);
      
% Get the size of the on screen window
[screenXpixels, screenYpixels] = Screen('WindowSize', win);

% Query the frame duration
ifi = Screen('GetFlipInterval', win);

% The avaliable keys to press
escapeKey = KbName('ESCAPE');
upKey = KbName('UpArrow');
downKey = KbName('DownArrow');
leftKey = KbName('LeftArrow');
rightKey = KbName('RightArrow');

LeftShiftKey = KbName('LeftShift');

% Get the centre coordinate of the window
[xCenter, yCenter] = RectCenter(windowRect);
%xCenter = int(windowRect(1)*.5);
%yCenter = int(windowRect(2)*.5);

% Make a base Rect of 200 by 200 pixels
baseRect = [0 0 200 200];

% Set the color of the rect to red
rectColor = [1 0 0]; 

% Set the intial position of the square to be in the centre of the screen
squareX = xCenter; squareY = yCenter;

% Set the amount we want our square to move on each button press
pixelsPerPress = 30;

% Sync us and get a time stamp
vbl = Screen('Flip', win);
waitframes = 1;

% Maximum priority level
topPriorityLevel = MaxPriority(win);
Priority(topPriorityLevel);

% This is the cue which determines whether we exit the demo
exitDemo = false;






% Loop the animation until the escape key is pressed
while exitDemo == false

    % Check the keyboard to see if a button has been pressed
    [keyIsDown,secs, keyCode] = KbCheck;
    
    % Depending on the button press, either move ths position of the square
    % or exit the demo
    if keyCode(escapeKey)
        exitDemo = true;
        break; screen('CloseAll');
    elseif keyCode(leftKey)
        squareX = squareX - pixelsPerPress;
    elseif keyCode(rightKey)
        squareX = squareX + pixelsPerPress;
    elseif keyCode(upKey)
        squareY = squareY - pixelsPerPress;
    elseif keyCode(downKey)
        squareY = squareY + pixelsPerPress;
    elseif keyCode(LeftShiftKey)
        if rectColor == [1, 0, 0];    
            rectColor = [0, 1, 0];
        elseif rectColor == [0, 1, 0]
            rectColor = [0, 0, 1];
        else
            rectColor = [1, 0, 0];
        end
    end

    % We set bounds to make sure our square doesn't go completely off of
    % the screen
    if squareX < 0
        squareX = 0;
        squareX = xCenter; squareY = yCenter;

    elseif squareX > screenXpixels
        squareX = screenXpixels;
        squareX = xCenter; squareY = yCenter;

    end

    if squareY < 0
        squareY = 0;
        squareX = xCenter; squareY = yCenter;

    elseif squareY > screenYpixels
        squareY = screenYpixels;
        squareX = xCenter; squareY = yCenter;

    end

    % Center the rectangle on the centre of the screen
    centeredRect = CenterRectOnPointd(baseRect, squareX, squareY);

    % Draw the rect to the screen
    Screen('FillRect', win, rectColor, centeredRect);

    % Flip to the screen
    vbl  = Screen('Flip', win, vbl + (waitframes - 0.5) * ifi);

end

% Clear the screen
Screen('CloseAll'); clc; clear all;
