%% LAUNCH_AREAS

% Crea le immagini delle aree di atterraggio in tutti i profili di missione:
% Ala di rogallo incontrollata
% Ala di rogallo non si apre
% Lancio balistico
% Infine vengono anche riportate tutti i punti di apogeo

% Contributors: 
% Mauro De Francesco - mauro.defrancesco@skywarder.eu
% Adriano Filippo Inno - adriano.filippo.inno@skywarder.eu
% Salvatore Andrea Bella - salvatore.andrea.bella@skywarder.eu

%%
close all
clear all
clc
warning('off')  % SHUT UP MATLAB

%% COLORS

%[153/255 153/255 0],[1 1 204/255] yellow
%[0 102/255 0],[204/255 1 204/255] green
%[1 229/255 204/255] red
%[224/255 224/255 224/255] grey
%[102/255 178/255 1],[204/255 229/255 1]blue
% for trasparency alpa(x) where 0<x<1 is the trasparency percentage

%% NOMINAL MISSION: ROGALLO OPENS

% Set Current Figure and Extract Data from it
origin='rog_yes.fig';
[x,y]=getdata(origin);

% Position Scaled map in background
figure()
img = imread('map.png');
imshow(img, 'YData',[-20000 20250], 'XData',[-20850 20000]);  %change for different sizing
axis on
hold on

% Draws Front Circumference
col='b';
[h1,h2,h3,h4,h5] = front([0 128/255 1],[204/255 229/255 1],x,y,col);
pause(2)
hold on 

% Draws back areas
run('back_area.m')

% Legend
lgnd=legend([h1,h2,h3,h5,h(1,1),h4,h7],{'Prolungamento zona atterraggio in mare',...
    'Media delle zone di atterraggio','Massima distanza','Base di lancio',...
    'Zona di atterraggio a terra','Punti di atterraggio',...
    'Punti di atterraggio'},'Box','off','Location','southeast',...
    'TextColor','w');
title('Atterraggio con ala di rogallo incontrollata');
xlabel('Km')
ylabel('Km')
axis image

xticks([-20000 -15000 -10000 -5000 0 5000 10000 15000 20000]);
xticklabels({'-20', '-15', '-10', '-5', '0', '5', '10', '15', '20'});
yticks([-20000 -15000 -10000 -5000 0 5000 10000 15000 20000])
yticklabels({'-20', '-15', '-10', '-5', '0', '5', '10', '15', '20'})

clear all 

%% ROGALLO DOESN'T OPEN

% Set Current Figure and Extract Data from it
origin='rog_no.fig';
[x,y]=getdata(origin);

% Position Scaled map in background
figure()
img = imread('map.png');
imshow(img, 'YData',[-20000 20250], 'XData',[-20850 20000]);
axis on
hold on

% Draws Front Circumference
col=[0 102/255 51/255];
[h1,h2,h3,h4,h5] = front([0 102/255 0],[204/255 1 204/255],x,y,col)
pause(2)

% Legend
lgnd=legend([h1,h2,h3,h5,h4],{'Prolungamento zona atterraggio in mare',...
    'Media delle zone di atterraggio','Massima distanza',...
    'Base di lancio','Punti di atterraggio'},'Box','off','Location',...
    'southeast','TextColor','w');
title('Atterraggio senza ala di Rogallo');
xlabel('Km')
ylabel('Km')
axis image

xticks([-20000 -15000 -10000 -5000 0 5000 10000 15000 20000]);
xticklabels({'-20', '-15', '-10', '-5', '0', '5', '10', '15', '20'});
yticks([-20000 -15000 -10000 -5000 0 5000 10000 15000 20000])
yticklabels({'-20', '-15', '-10', '-5', '0', '5', '10', '15', '20'})

clear all 

%% BALlISTIC

%Set Current Figure and Extract Data from it
origin='bal.fig';
[x,y]=getdata(origin);

% Position Scaled map in background
figure()
img = imread('map.png');
imshow(img, 'YData',[-20000 20250], 'XData',[-20850 20000]);
axis on
hold on

% Draws Cone 
[h1,h3,h5,h4] = cone([1 229/255 204/255],x,y);
pause(2)

% Legend
lgnd=legend([h1,h3,h5,h4],{'Zona atterraggio in mare',...
    'Massima distanza','Base di lancio','Punti di atterraggio'},...
    'Box','off','Location','southeast','TextColor','w');
title('Atterraggio balistico');
xlabel('Km')
ylabel('Km')
axis image

xticks([-20000 -15000 -10000 -5000 0 5000 10000 15000 20000]);
xticklabels({'-20', '-15', '-10', '-5', '0', '5', '10', '15', '20'});
yticks([-20000 -15000 -10000 -5000 0 5000 10000 15000 20000])
yticklabels({'-20', '-15', '-10', '-5', '0', '5', '10', '15', '20'})

clear all 


%% APOGEES

%Set Current Figure and Extract Data from it
% origin='apogee_plot.fig';
% [x,y]=getdata(origin);

% %Front Circumference
% figure(); %if you want next data in another figure delete the %
% front([153/255 153/255 0],[1 1 204/255],x,y)
% pause(2)
% 
% %figure() %if you want next data in another figure delete the %
% hold on 
% 
% %Back Circumference
% if x(1, : ) > 0 
%     fprintf('\n  No x is < 0, in the APOGEES case, the back figure wont be displayed because no point is there')
% else 
%     back([153/255 153/255 0],[1 1 204/255],x,y)
%     pause(2)
% end
% 
% 
% %figure() %if you want next data in another figure delete the %
% hold on 

%Cone 
% cone([1 229/255 204/255],x,y);
% pause(2)

% clear x y z origin %clear all the variables for further figures







