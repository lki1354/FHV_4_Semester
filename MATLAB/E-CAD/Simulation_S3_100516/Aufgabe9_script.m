%Aufgabe 9

clear;

Vin = 10;
R = 10E+3;
toleranz = 0.1;
R_t = random('Normal',R,R*toleranz,1,10);
Rd = 0.1;

U_res = 0;


for i = 1:10
  R4 = R_t(i);
  sim('Aufgabe9');
  U_res(i) = mean(U4);
end
print(simlog) 