Feature: Alta disponibilidad del sistema

  Scenario: Acceso en horarios no pico
    Given que el usuario accede entre las 2-4 pm
    When solicita información desde la app
    Then el sistema responde sin demoras ni fallos

  Scenario: Acceso en media concurrencia
    Given que el usuario accede entre las 10 am y 1 pm
    When consulta el mapa de pesca
    Then el sistema responde rápidamente sin dificultades

  Scenario: Acceso en alta concurrencia
    Given que el usuario accede entre las 4-9 am
    When accede al sistema
    Then la app responde gracias al balance de carga
