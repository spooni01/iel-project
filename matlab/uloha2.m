%premenne
U=200;
R1=70;
R2=220;
R3=630;
R4=240;
R5=450;

%medzivypocty
R45=R4+R5;
R345=(R45*R3)/(R45+R3);

%obvod
obvod_RI = (R2*R345)/(R2+R345);
obvod_UI = U*(R2/(R2+R345));

%dopocitanie IR1 a UR1
vysledok_IR1 = obvod_UI/(obvod_RI+R1);
vysledok_UR1 = vysledok_IR1*R1;