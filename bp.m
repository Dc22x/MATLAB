N = 13
n = -(N-1)/2:(N-1)/2;
f = 2122;
fc = fs/2 - f

fl = fs/4 - f;
fh = fs/4 + f;  


fs = 30000;

% omh = 2*pi*(fh/fs);
% oml = 2*pi*(fl/fs);
% cons = (omh-oml)/pi;
%     if n == 0
%         band((N-1)/2) = cons;
%         
%     else    
%         band((N-1)/2 +1) = sin(omh*n)/(n*pi)-sin(oml*n)/(n*pi);
%     end
% fvtool(band)
% Hp
fs = 30000;

om = 2*pi*(f/fs);

Hl = om/pi*sinc(om*n/pi);

Bp = Hl.*cos(n*5/pi);

fvtool(Bp)
freqz(Bp)