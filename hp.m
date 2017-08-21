N = 13
n = -(N-1)/2:(N-1)/2;
f = 2122;
fc = fs/2 - f


fs = 30000;

om = 2*pi*(f/fs);

Hl = om/pi*sinc(om*n/pi);
% w = 0.5 - 0.5*cos(2*pi*n/(n-1));
% HLW = Hl.*w
% fvtool(HLW,1)

Hp = Hl.*cos(n*9/pi);

fvtool(Hp)
freqz(Hp)