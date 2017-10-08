close all
clear all
clc
%% COLORS
%[153/255 153/255 0],[1 1 204/255] yellow
%[0 102/255 0],[204/255 1 204/255] green
%[1 229/255 204/255] red
%[224/255 224/255 224/255] grey
% blue(?)
% for trasparency alpa(x) where 0<x<1 is the trasparency percentage
%%
%%ROGALLO OPENS

%Set Current Figure and Extract Data from it
origin='rog_yes.fig';
[x,y]=getdata(origin);

%Front Circumference
figure();
front([153/255 153/255 0],[1 1 204/255],x,y)
pause(3)

%figure() %if you want next data in another figure delete the %
hold on 

%Back Circumference
if x(1, : ) > 0 
    fprintf('\n No x is < 0, in the ROGALLO OPENS case, the back figure wont be displayed because no point is there')
else 
    back([153/255 153/255 0],[1 1 204/255],x,y)
    pause(3)
end

%figure() %if you want next data in another figure delete the %
hold on 

%Cone 
cone([1 229/255 204/255],x,y);
pause(3)

clear x y z origin %clear all the variables for further figures

%%
%%ROGALLO DOESN'T OPEN

%Set Current Figure and Extract Data from it
origin='rog_no.fig';
[x,y]=getdata(origin);

%Front Circumference
figure(); %if you want next data in another figure delete the %
front([153/255 153/255 0],[1 1 204/255],x,y)
pause(3)

%figure() %if you want next data in another figure delete the %
hold on 

%Back Circumference
if x(1, : ) > 0 
    fprintf('\n No x is < 0, in the ROGALLO DOESNT OPEN case,the back figure wont be displayed because no point is there')
    else 
    back([153/255 153/255 0],[1 1 204/255],x,y)
    pause(3)
end


%figure() %if you want next data in another figure delete the %
hold on 

%Cone 
cone([1 229/255 204/255],x,y);
pause(3)

clear x y z origin %clear all the variables for further figures

%%
%%BALLISTIC 

%Set Current Figure and Extract Data from it
origin='bal.fig';
[x,y]=getdata(origin);

%Front Circumference
figure(); %if you want next data in another figure delete the %
front([153/255 153/255 0],[1 1 204/255],x,y)
pause(3)

%figure() %if you want next data in another figure delete the %
hold on 

%Back Circumference
if x(1, : ) > 0 
    fprintf('\n  No x is < 0, in the BALLISTIC case, the back figure wont be displayed because no point is there')
else 
    back([153/255 153/255 0],[1 1 204/255],x,y)
    pause(3)
end


%figure() %if you want next data in another figure delete the %
hold on 

%Cone 
cone([1 229/255 204/255],x,y);
pause(3)

clear x y z origin %clear all the variables for further figures


%%
%%APOGEES

%Set Current Figure and Extract Data from it
origin='rog_no.fig';
[x,y]=getdata(origin);

%Front Circumference
figure(); %if you want next data in another figure delete the %
front([153/255 153/255 0],[1 1 204/255],x,y)
pause(3)

%figure() %if you want next data in another figure delete the %
hold on 

%Back Circumference
if x(1, : ) > 0 
    fprintf('\n  No x is < 0, in the APOGEES case, the back figure wont be displayed because no point is there')
else 
    back([153/255 153/255 0],[1 1 204/255],x,y)
    pause(3)
end


%figure() %if you want next data in another figure delete the %
hold on 

%Cone 
cone([1 229/255 204/255],x,y);
pause(3)

clear x y z origin %clear all the variables for further figures







