N = 13
n = -(N-1)/2:(N-1)/2;
f = 2122;
fc = fs/2 - f

fl = fs/4 - f;
fh = fs/4 + f;  


fs = 30000;

omh = 2*pi*(fh/fs);
oml = 2*pi*(fl/fs);
bs = (-sin(omh*n)+sin(oml*n))./(n*pi);
bs(7) = (1-(oml-omh)/pi);
  


fvtool(bs);



