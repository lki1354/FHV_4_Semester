%
%
%

close all;
clear;
clc % clears console output


A_tablle = [0 0 0 0 1 1 1 1];
B_tablle = [0 0 1 1 0 0 1 1 ];
C_tablle = [0 1 0 1 0 1 0 1 0];

A = 0;
B = 0;
C = 0;

res_vector = zeros(8,4); % erstellt eine 8x4 Matrix mit Nullen

for i=1:8
    A = A_tablle(i);
    B = B_tablle(i);
    C = C_tablle(i);
    sim('Aufgabe5',1E-6);
    
    res_vector(i,:) = [A B C OUT(1)];
    
end

res_vector

