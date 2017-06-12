
% ------------------------------------------------------------------------------
%                      Taller de Matemática Computacional
%                                TP especial
%                             Sebastian Bellido
% ------------------------------------------------------------------------------

clc
clear
% Inicializamos un error epsilon
epsilon = 0.1;
dni = 27388144;

% Calculamos la probabilidad de dos fallos seguidos
[probabilidad, todas_las_probabilidades] = calcular_probabilidad_del_exito(epsilon, dni);

% Mostramos por pantalla la probabilidad que nos dio
fprintf('La probabilidad de dos fallos seguidos es: %d\n', probabilidad);

% Graficamos cómo fue evolucionando la probabilidad iteración a iteración
figure, plot(todas_las_probabilidades);
hold on;
grid on;
plot (ones(size(todas_las_probabilidades))*0.5, '--');
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad', 'Probabilidad analitica');