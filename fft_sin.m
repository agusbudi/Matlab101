% fft_sin.m
%script pour montrer une analyse fft 
%d'abord on define le base du temps des donn�es

Tinitial =0;
Tfinal = 1;
%Nombre d'�chantillons 
NbEch = 300;

%on d�termine la p�riod et la fr�quence d'�chantillonnage
Tech = (Tfinal - Tinitial)/(NbEch-1);
Fech = 1/Tech;

% les fr�quence des composants du signal
Freq1 = 10;
Freq2 = 25;

% on g�n�re le vecteur du temps et le signal
t = Tinitial : Tech: Tfinal;
x = sin(2*pi*Freq1*t) + 0.5*sin(2*pi*Freq2*t);

% on applique l'analyse de Fourier
y = fft(x);

% la sortie est complex. On prend le modulus complex comme amplitude
% et on divise par Nb de donn�ees pour arriver aus 'vrais' amplitudes
m = abs(y)/NbEch;

% la phase est calcul�e. 

p = unwrap(angle(y));

% pour cr�er l'echelle de la fr�quence
f = (0:NbEch-1)*Fech/NbEch;

subplot(3,1,1),plot(t,x),xlabel('temps(s)')
subplot(3,1,2),plot(f,m),xlabel('fr�quence(Hz)'),grid on
subplot(3,1,3),plot(f,p*180/pi),xlabel('fr�quence(Hz)'),ylabel('phase (deg)'),grid on



