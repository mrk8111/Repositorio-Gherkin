Feature: Tiempos de carga aceptables

  Escenario: Inicio de sesión eficiente
    DADO QUE el pescador artesanal necesita usar la aplicación con rapidez durante su jornada
    CUANDO inicia sesión en FishMax
    ENTONCES el tiempo de carga no debe superar los 4 segundos
    Y el pescador percibe que la app es confiable y ágil

    INPUT:
    Intento de inicio de sesión del pescador en FishMax
    OUTPUT:
    Inicio de sesión completado en menos de 4 segundos
    Percepción del pescador de una aplicación confiable y ágil

  Escenario: Visualización rápida del mapa
    DADO QUE el usuario tiene conexión limitada a internet y necesita consultar su ruta
    CUANDO selecciona la opción de Mapa en la aplicación
    ENTONCES el sistema carga el contenido en menos de 3 segundos
    Y muestra correctamente las zonas preferenciales de pesca
    
    INPUT:
    Selección de la opción "Mapa" en la aplicación por parte del usuario
    Conexión a internet potencialmente limitada
    OUTPUT:
    Contenido del mapa cargado en menos de 3 segundos
    Zonas preferenciales de pesca mostradas correctamente en el mapa
