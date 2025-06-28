Feature: Tiempos de carga aceptables

  Escenario: Inicio de sesión eficiente
    DADO QUE el pescador artesanal necesita usar la aplicación con rapidez durante su jornada
    CUANDO inicia sesión en FishMax
    ENTONCES el tiempo de carga no debe superar los 4 segundos
    Y el pescador percibe que la app es confiable y ágil

  Escenario: Visualización rápida del mapa
    DADO QUE el usuario tiene conexión limitada a internet y necesita consultar su ruta
    CUANDO selecciona la opción de Mapa en la aplicación
    ENTONCES el sistema carga el contenido en menos de 3 segundos
    Y muestra correctamente las zonas preferenciales de pesca
