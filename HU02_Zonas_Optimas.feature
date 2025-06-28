Feature: Visualización de zonas óptimas de pesca

  Scenario: Mostrar zonas recomendadas de pesca
    Given que el pescador artesanal necesita una ruta de pesca
    When inicia sesión en FishMax
    Then la aplicación muestra un mapa de pesca en tiempo real
    And se resaltan las zonas recomendadas según clima y marea

  Scenario: Guardar zonas recomendadas
    Given que el pescador artesanal vio productividad en una zona
    When presiona sobre la zona en el mapa
    Then la aplicación la guarda como favorita para futuras consultas
