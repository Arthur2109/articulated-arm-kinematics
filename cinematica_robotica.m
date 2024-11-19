clear all
clc
close all
%% parameters

r1 = 1.0; % long. barra 1 [cm]
r2 = 1.0; % long. barra 2 [cm]
r3 = 1.0; % long. barra 3 [cm]

%% initial conditions
th1 = pi/4;
th2 = pi/5;
th3 = pi/3;
%% 

lx=r1*cos(th1)+r2*cos(th1+th2)+r3*cos(th1+th2+th3);
ly=r1*sin(th1)+r2*sin(th1+th2)+r3*sin(th1+th2+th3);
gamma=th1+th2+th3;

%% puntos

% 1er point
p0x = 0.0;
p0y = 0.0;

% 2do point
p1x = p0x + r1*cos(th1);
p1y = p0y + r1*sin(th1);

% 3er point
p2x = p1x + r2*cos(th1+th2);
p2y = p1y + r2*sin(th1+th2);

% 4er point
p3x = p2x + r3*cos(th1+th2+th3);
p3y = p2y + r3*sin(th1+th2+th3);

%% plot

fig1 = figure(1);

hb1 = plot([p0x,p1x],[p0y,p1y],'linewidth',6);
hold on
hb2 = plot([p1x,p2x],[p1y,p2y],'linewidth',4);
hold on
hb3 = plot([p2x,p3x],[p2y,p3y],'linewidth',2);
hold on
hb4 = plot([-4,4],[0,0],'linewidth',4,"ColorMode","manual");

axis equal
axis([-1.25*(r1+r2+r3) 1.25*(r1+r2+r3) -1*(r1+r2+r3) 1.25*(r1+r2+r3)])
grid on



