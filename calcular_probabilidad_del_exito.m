
function [probabilidad, todas_las_probabilidades] = calcular_probabilidad_del_exito(epsilon, dni)

  % Inicializo las variables que necesito
    probabilidad_anterior = 0; 
    probabilidad_actual = 1;  
    casos_favorables = 0;
    total_de_pruebas = 0;
    todas_las_probabilidades = [];
    
  % Mientras el algoritmo no converge
  while ~converge(probabilidad_anterior, probabilidad_actual, epsilon, total_de_pruebas, dni)
  
  % La probabilidad anterior es la probabilidad actual
    probabilidad_anterior = probabilidad_actual;
  
  intento1 = my_mex_service (dni);
  intento2 = my_mex_service (dni);
    
  % Actualizo la cantidad de pruebas
    total_de_pruebas = total_de_pruebas + 1;
    
  % Chequeo si hay dos fallos seguidos
    if (intento1 == 0 && intento2 == 0)
      casos_favorables = casos_favorables + 1;
    end
    
  % Calculo la probabilidad actual
    probabilidad_actual = casos_favorables / total_de_pruebas;
    
    fprintf ('%f\n', probabilidad_actual);
    fflush (stdout);
   
  % Esto es solamente para poder hacer el grafico ----------------------------
    todas_las_probabilidades = cat(1, todas_las_probabilidades, probabilidad_actual);
  % --------------------------------------------------------------------------
        
  end
  
  % Devuelvo la probabilidad actual
  probabilidad = probabilidad_actual;

end



