% premenne
U = 160;
I1 = 0.65;
I2 = 0.45;
R1 = 46;
R2 = 41;
R3 = 53;
R4 = 33;
R5 = 29;

%% medzivypocty %%
% prevod odporov na vodivost
G1 = 1/R1;
G2 = 1/R2;
G3 = 1/R3;
G4 = 1/R4;
G5 = 1/R5;
% matice
syms UA UB UC
IR5 = U/R5;

matica_rovnic = [IR5-G5*(UA-UB)-UA*G1-G4*(UA-UB) == -I1,
        -IR5+G5*(UA-UB)+G4*(UA-UB)-G3*(UB-UC) == -I2,
        G3*(UB-UC)-UC*G2 == I2];

[matica_vodivosti,matica_prudy] = equationsToMatrix(matica_rovnic);
matica_napati = inv(matica_vodivosti)*matica_prudy;

%% vysledne vypocty
UR3 = matica_napati(2) - matica_napati(3);
IR3 = UR3/R3;

% prevod vysledkov na double
UR3 = double(UR3);
IR3 = double(IR3);
