
% ------------------------------------------------------------------------------
%                      Taller de MatemÃ¡tica Computacional
%                                TP especial
%                             Sebastian Bellido
% ------------------------------------------------------------------------------

clc
clear

% Inicializamos un error épsilon
epsilon = 0.1;
epsilon1 = 0.01;
epsilon2 = 0.001;
dni = 27388144;


tic
% 1er llamado épsilon 0.1 ------------------------------------------------------
% Calculamos la probabilidad de dos fallos seguidos
[probabilidad, todas_las_probabilidades] = calcular_probabilidad_del_exito(epsilon, dni);

% Mostramos por pantalla la probabilidad que nos dio
fprintf('La probabilidad de dos fallos seguidos con un épsilon de 0.1 es: %d\n', probabilidad);

% Graficamos como fue evolucionando la probabilidad iteración a iteración
figure, plot(todas_las_probabilidades);
hold on;
grid on;
plot (ones(size(todas_las_probabilidades))*0.5, '--');
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad', 'Probabilidad analitica');

% Desvío estándar, primeras 20 y últimas 20 iteraciones

primeras_20 = (std(todas_las_probabilidades(1:20)));
ultimas_20 = (std(todas_las_probabilidades(end-20:end)));

% Imprime por pantalla el desvío estándar

fprintf ('El desvío estándar de las primeras 20 iteraciones es: %d\n', primeras_20);
fprintf ('El desvío estándar de las últimas 20 iteraciones es: %d\n', ultimas_20);

tiempo = toc;  % termina de medir el tiempo del experimento
fprintf ('El tiempo en segundos del experimento es: %d\n', tiempo);
fprintf ('---------------------------------------------------------\n');


% 2do llamado épsilon 0.01 ------------------------------------------------------
tic
% Calculamos la probabilidad de dos fallos seguidos
[probabilidad, todas_las_probabilidades] = calcular_probabilidad_del_exito(epsilon1, dni);

% Mostramos por pantalla la probabilidad que nos dio
fprintf('La probabilidad de dos fallos seguidos con un épsilon de 0.01 es: %d\n', probabilidad);

% Graficamos como fue evolucionando la probabilidad iteración a iteración
figure, plot(todas_las_probabilidades);
hold on;
grid on;
plot (ones(size(todas_las_probabilidades))*0.5, '--');
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad', 'Probabilidad analitica');

% Desvío estándar, primeras 20 y últimas 20 iteraciones

primeras_20 = (std(todas_las_probabilidades(1:20)));
ultimas_20 = (std(todas_las_probabilidades(end-20:end)));

% Imprime por pantalla el desvío estándar
fprintf ('El desvío estándar de las primeras 20 iteraciones es: %d\n', primeras_20);
fprintf ('El desvío estándar de las últimas 20 iteraciones es: %d\n', ultimas_20);

tiempo = toc;  % termina de medir el tiempo del experimento
fprintf ('El tiempo en segundos del experimento es: %d\n', tiempo);
fprintf ('---------------------------------------------------------\n');



% 3er llamado épsilon 0.001 ------------------------------------------------------
tic
% Calculamos la probabilidad de dos fallos seguidos
[probabilidad, todas_las_probabilidades] = calcular_probabilidad_del_exito(epsilon2, dni);

% Mostramos por pantalla la probabilidad que nos dio
fprintf('La probabilidad de dos fallos seguidos con un épsilon de 0.001 es: %d\n', probabilidad);

% Graficamos como fue evolucionando la probabilidad iteración a iteración
figure, plot(todas_las_probabilidades);
hold on;
grid on;
plot (ones(size(todas_las_probabilidades))*0.5, '--');
xlabel('Número de iteración');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad', 'Probabilidad analitica');

% Desvío estándar, primeras 20 y últimas 20 iteraciones

primeras_20 = (std(todas_las_probabilidades(1:20)));
ultimas_20 = (std(todas_las_probabilidades(end-20:end)));

% Imprime por pantalla el desvío estándar
fprintf ('El desvío estándar de las primeras 20 iteraciones es: %d\n', primeras_20);
fprintf ('El desvío estándar de las últimas 20 iteraciones es: %d\n', ultimas_20);

tiempo = toc;  % termina de medir el tiempo del experimento
fprintf ('El tiempo en segundos del experimento es: %d\n', tiempo);
fprintf ('---------------------------------------------------------\n');

