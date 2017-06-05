% fft_sin.m
%script pour montrer une analyse fft 
%d'abord on define le base du temps des données

Tinitial =0;
Tfinal = 1;
%Nombre d'échantillons 
NbEch = 300;

%on détermine la périod et la fréquence d'échantillonnage
Tech = (Tfinal - Tinitial)/(NbEch-1);
Fech = 1/Tech;

% les fréquence des composants du signal
Freq1 = 10;
Freq2 = 25;

% on génère le vecteur du temps et le signal
t = Tinitial : Tech: Tfinal;
x = sin(2*pi*Freq1*t) + 0.5*sin(2*pi*Freq2*t);

% on applique l'analyse de Fourier
y = fft(x);

% la sortie est complex. On prend le modulus complex comme amplitude
% et on divise par Nb de donnéees pour arriver aus 'vrais' amplitudes
m = abs(y)/NbEch;

% la phase est calculée. 

p = unwrap(angle(y));

% pour créer l'echelle de la fréquence
f = (0:NbEch-1)*Fech/NbEch;

subplot(3,1,1),plot(t,x),xlabel('temps(s)')
subplot(3,1,2),plot(f,m),xlabel('fréquence(Hz)'),grid on
subplot(3,1,3),plot(f,p*180/pi),xlabel('fréquence(Hz)'),ylabel('phase (deg)'),grid on



