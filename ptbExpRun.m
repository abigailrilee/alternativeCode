sca;
close all;
clearvars; %initial clear of everything

PsychDefaultSetup(2);

screens = Screen('Screens');

screenNumber = max(screens);

if screenNumber > 0
    
    windowSize = [];
    
else 
    
    windowSize = [0 0 500 500]; %to create a smaller window if I'm running this with only one screen
    
end

backColour = 0.5; %makes the background colour grey

Screen('Preference', 'SkipSyncTests', 2); %stops ptb from automatically 
%crashing on my laptop, if used on lab computer want to make the end value 0 

[window, windowSize] = PsychImaging('OpenWindow', screenNumber, backColour, windowSize); %opens the ptb window

KbStrokeWait; %will eventually want to take this out, but for testing it is good to have
sca;