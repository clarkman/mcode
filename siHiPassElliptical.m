function Hd = siHiPassElliptical
%SIHIPASSELLIPTICAL Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 8.6 and the Signal Processing Toolbox 7.1.
% Generated on: 09-Aug-2016 17:28:39

% Elliptic Highpass filter designed using FDESIGN.HIGHPASS.

% All frequency values are in Hz.
Fs = 12000;  % Sampling Frequency

N     = 10;   % Order
Fpass = 180;  % Passband Frequency
Apass = 1;    % Passband Ripple (dB)
Astop = 80;   % Stopband Attenuation (dB)

% Construct an FDESIGN object and call its ELLIP method.
h  = fdesign.highpass('N,Fp,Ast,Ap', N, Fpass, Astop, Apass, Fs);
Hd = design(h, 'ellip');

% [EOF]
