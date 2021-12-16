% premenne
U1 = 5;
U2 = 5;
R1 = 13;
R2 = 12;
L1 = 0.14;
L2 = 0.06;
C1 = 0.00016;
C2 = 0.00008;
f = 60;
pi = 3.1415926535897;

%% medzivypocty
%uhlova frekvencia
lambda = 2*pi*f;

%matica pre smycky
matica = [lambda*L1*1i-R1+(1/(lambda*C2)) -R1 (1/(lambda*C2))*1i,
          R1 (1/(lambda*C1))*1i+R1 0,
          (1/(lambda*C2))*1i 0 lambda*L2*1i+R2+(1/(lambda*C2))*1i];
matica_napati = [U1, U2, U2];

%vypocitaj determinanty
matica_determinant3 = matica;
matica_determinant3(:,3)=matica_napati;
determinant = det(matica);
determinant3 = det(matica_determinant3);


IC = determinant3/determinant;
IL2 = IC;

%vypocitame napatie UC1
XL2 = lambda*L2*1i;
UL2 = XL2*IL2;

%% vypocitame vysledky
final_UL2 = sqrt((real(UL2)^2)+(imag(UL2)^2));
final_uholUL2 = atan(imag(UL2)/real(UL2));


display(final_UL2);