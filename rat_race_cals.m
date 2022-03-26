clearvars; 

f = 10e9;
epsr = 3.242;
eps0 = 8.8541878128e-12;
tanD = 0.02;
mu = 4*pi*1e-7;
short_angle_deg = 180/3;
long_angle_deg = 180;

METER_TO_MIL = 39370.1;

u = symunit;
w = 2*pi*f;
epsr_pprime = tanD*epsr;
eps_prime = epsr*eps0;

k = w*sqrt(mu*eps_prime);
gamma = sqrt(-k^2*(1-1j*tanD));
betta = imag(gamma);
lambda = 2*pi/betta;

radius_m = 1.5*lambda/(2*pi);
radius_mil = radius_m * METER_TO_MIL;
