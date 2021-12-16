%premenne
U1 = 130;
U2 = 60;
R1 = 380;
R2 = 420;
R3 = 330;
R4 = 440;
R5 = 450;
R6 = 650;
R7 = 410;
R8 = 275;

%medzivypocty
U=U1+U2;
R45 = (R4*R5)/(R4+R5);
R457 = R45+R7;
RA = (R1*R2)/(R1+R2+R3);
RB = (R1*R3)/(R1+R2+R3);
RC = (R2*R3)/(R1+R2+R3);
RB457 = RB+R457;
RC6 = RC+R6;
RB457C6 = (RB457*RC6)/(RB457+RC6);

%obvod
obvod_REKV=RA+RB457C6+R8;
obvod_I=U/obvod_REKV;

%dopocitanie UR5 a IR5
URB457C6 = obvod_I*RB457C6;

vysledok_IR7=URB457C6/RB457;
vysledok_UR7=vysledok_IR7*R7;
