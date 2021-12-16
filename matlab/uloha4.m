% premenne
%U1 = 5;
%U2 = 5;
%R1 = 13;
%R2 = 12;
%L1 = 140;
%L2 = 60;
%C1 = 160;
%C2 = 80;
%f = 60;
%pi = 3.1415926535897;
U1 = 35;
U2 = 55;
R1 = 12;
R2 = 14;
R3 = 10;
L1 = 0.12;
L2 = 0.1;
C1 = 0.0002;
C2 = 0.000105;
f = 70;
pi = 3.1415926535897;
%% medzivypocty
%uhlova frekvencia
lambda = 2*pi*f;

%matica pre smycky
syms IA IB IC
matica = [R1+lambda*L2*i+R2+lambda*L1*i -R2-lambda*L1*i -lambda*L2*i,
          -lambda*L1*i-R2 lambda*L1*i+R2-(1/(lambda*C2))*i-(1/(lambda*C1))*i (1/(lambda*C2))*i,
          -lambda*L2*i (1/(lambda*C2))*i lambda*L2*i+R3-(1/(lambda*C2))*i];
matica_napati = [0, U1, U2];

%vypocitaj determinanty
matica_determinant2 = matica;
matica_determinant2(:,2,:)=matica_napati;
determinant = det(matica);
determinant2 = det(matica_determinant2);


IB = determinant2/determinant;
IC1 = IB;

%vypocitWame napatie UC1
XC1 = (-1/(lambda*C1))*i;
UC1 = IC1*XC1;

%% vypocitame vysledky
final_UC1 = sqrt((real(UC1)^2)+(imag(UC1)^2));
final_uholC1 = atan(imag(UC1)/real(UC1));