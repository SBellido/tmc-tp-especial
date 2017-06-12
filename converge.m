
function convergio = converge(probabilidad_anterior, probabilidad_actual, epsilon, total_de_pruebas)

  % Para que el experimento converja, le vamos a pedir que al menos haya iterado
  % unas 150 veces. Esto se logra pidiendo que el total de tiradas que voy 
  % llevando sea menor a 150.
  % Es importante hacer esto para evitar convergencia prematura (es decir, que 
  % el algoritmo estime una probabilidad solamente con unas pocas tiradas, 
  % por mera casualidad).

  % Si el total de tiradas es mayor a 150
  if total_de_pruebas > 150
    % Y la diferencia entre la probabilidad anterior y la actual es menor a 
    % epsilon...
    if (abs(probabilidad_anterior - probabilidad_actual) < epsilon) 
      % Convergio!
      convergio = true;
    else
      % No convergio :(
      convergio = false;
    end
  else
    % No convergio :(
    convergio = false;
  end

end