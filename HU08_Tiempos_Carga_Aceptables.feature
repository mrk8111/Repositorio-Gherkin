Feature: Tiempos de carga aceptables

  Scenario: Inicio de sesión rápido
    Given que el pescador inicia sesión en FishMax
    When el sistema procesa los datos del usuario
    Then el tiempo de carga no debe exceder los 4 segundos

  Scenario: Carga del mapa con poca conexión
    Given que el usuario accede al mapa desde una zona con baja señal
    When selecciona la opción de "Mapa"
    Then el mapa se carga en menos de 3 segundos
