%%Gear design

%rpm given by engine
n = rpmvspower(1:61);
%Reduction by CVT
c = linspace(3,0.45,61);
kw = rpmvspower(1:61,2);
P = kw';

%final output of rpm
N = n./c;
%Torque provided by engine
M = rpmvstorque(1:61,2);
Mt = M'*1000;

%Service factor and factor safty
Cs = 1.75; 
fs = 1.2;

%Assuming the pitch velocity as 5m/s
Cv = 0.375;

%for 25 teeth pinion, lewis form factor
Y = 0.320;
z = 20;

%face width
b = 10;

%ultimate tensile strength 20MnCrO5
Su = 990/3;

%module estimation

mv = (((60*10^6)* P * Cs * fs)./(pi * z * b * N * Cv * Su * Y)).^0.33333;

%mean of module
m = mean(mv);

%module of gears is 2 so lets take 2 for first stage
dp = 2*z;
zg = 75;
dg = 2*zg;

%pitch line velocity of the pinion
v = (pi*dp*N)/(60*10^3);
V = mean(v);

%Now as velocity is less than 10, so value of Cv is correct
%finding the beam strength
Sb = 2*b*2*Su*Y;

%The value of the deformation factor
C = 11900;

%error in pinion and gear
phi1 = 2 + 0.25*(sqrt(dp));
phig = 2 + 0.25*(sqrt(dg));

%considering the grade 6
ep = 8.00+0.63*phi1;
eg = 8.00+0.63*phig;

E = (ep + eg)*10^(-3);

%Dynamic load on the gear and pinion
PT = (2.*Mt)/dp;
Pt = mean(PT);
Pd = (21 * V * ((C*E*b*2) + Pt))/ ((21 * V)+(sqrt((C*E*b*2)+Pt)));


%Now, effective force on the teeth of gear
Peff = ((Cs*Pt)+Pd);
Fs = Peff/Sb;

%considerring the wear strength of gear and pinion
Q = (2*zg)/(zg+z);

Sw = Peff * fs;

%now finding the BHN number
BHN = sqrt((Sw*100*100)/(0.16*m*b*Q*dp));




