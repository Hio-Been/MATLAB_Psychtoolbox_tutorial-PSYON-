% week5_scr_5_Animate.m

%%%%%%%%%%%%%%%%%% screen_5_Animate %%%%%%%%%%%%%%%%%%%%
clc; clear all; Screen('Preference', 'SkipSyncTests', 2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% (1) Open Window
background_Color=[0,0,0];
screen_Size=[0 00 1000 600];
[win, rect] = Screen('OpenWindow', 0, background_Color, screen_Size);

% (2) Draw Circle Practice
radius = 50; % radius of circle (pixels)
circle_Color = [255 255 255];


Screen('FillOval', win, circle_Color,...
    [300 - radius, 300 - radius,...
     300 + radius, 300 + radius])
Screen('Flip', win); 


% (3) Draw Moving Circle
kdown = 0; % keyboard check == False

for i = 0:1:500    
    
    % (4) Draw Circle with loop index
    Screen('FillOval', win, circle_Color,...
        [800 - radius - i, 300 - radius,...
         800 + radius - i, 300 + radius])
     
    Screen('FillOval', win, circle_Color,...
        [800 - radius - i, 450 - radius,...
         800 + radius - i, 450 + radius])
     
    
    Screen('Flip',win);
    
    % (5) If Keyboard is pressed, break the loop
    kdown = KbCheck;
    if kdown == 1
        break
    end
    
end

% (6) Wait for end
kdown2 = 0;
while kdown2 == 0
    kdown2 = KbCheck;
end
Screen('CloseAll')
