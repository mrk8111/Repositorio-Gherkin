Feature: Visualización de zonas óptimas de pesca

  Escenario: Visualización de las zonas de pesca recomendadas
    DADO QUE el pescador artesanal necesita planificar su jornada de pesca
    CUANDO inicia sesión en FishMax desde su dispositivo
    ENTONCES la aplicación muestra un mapa de pesca en tiempo real
    Y resalta zonas óptimas según el clima y la marea
  
    INPUT: 
    Inicio de sesión del pescador en la aplicación FishMax
    OUTPUT:
    Mapa de pesca en tiempo real mostrado en la aplicación
    Zonas óptimas resaltadas en el mapa, basadas en el clima y la marea

  Escenario: Guardar zonas recomendadas
    DADO QUE el pescador artesanal encuentra una zona de pesca productiva en el mapa
    CUANDO presiona sobre la zona para guardarla como favorita
    ENTONCES la aplicación almacena esa zona en la lista de favoritos
    Y permite consultarla más adelante desde la sección de zonas guardadas

    INPUT:
    Pescador presiona sobre una zona en el mapa de pesca
    OUTPUT:
    Zona seleccionada almacenada en la lista de zonas favoritas del usuario
    La zona guardada es consultable posteriormente en la sección de zonas guardadas
