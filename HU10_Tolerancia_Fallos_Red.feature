Feature: Tolerancia a fallos de red

  Scenario: Registro de captura sin conexión
    Given que el pescador no tiene conexión a internet
    When registra una nueva captura
    Then la app guarda el dato localmente y lo sincroniza luego

  Scenario: Visualización de mapa offline
    Given que el usuario se encuentra sin señal
    When accede al mapa previamente descargado
    Then la aplicación muestra las zonas guardadas sin conexión

  Scenario: Recolección de datos de sensores sin internet
    Given que los sensores recopilan información sin red
    When se recupera la conexión
    Then la app sincroniza los datos con el servidor
