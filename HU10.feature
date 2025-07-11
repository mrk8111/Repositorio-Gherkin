Feature: Tolerancia a fallos de red

  Como pescador artesanal
  Quiero que la aplicación funcione incluso sin conexión
  Para seguir usando funciones clave aunque la señal falle

  Scenario: Registro de captura sin conexión
    Given que el pescador artesanal se encuentra sin internet
    And necesita registrar una nueva captura
    When completa el formulario de captura
    Then la app almacena los datos localmente
    And sincroniza automáticamente al recuperar la conexión

  Scenario: Visualización de mapa descargado
    Given que el pescador está en altamar sin cobertura
    When accede a la sección de mapas offline
    Then la app muestra las zonas de pesca previamente descargadas
    And permite navegación básica sin conexión

  Scenario: Recolección de datos de sensores en modo offline
    Given que el pescador artesanal está en una zona sin red
    When los sensores (como temperatura o viento) capturan datos
    Then la app guarda esta información localmente
    And la sincroniza con el servidor apenas haya conexión disponible

  Scenario Outline: Validar operaciones críticas en modo offline
    Given que el sistema debe asegurar funcionalidad básica sin red
    When el usuario intenta acceder a:
      | Funcionalidad            | Resultado esperado             |
      | <funcion>                | <resultado>                    |
    Then el sistema responde según el protocolo offline definido

    Examples:
      | funcion                 | resultado                            |
      | Registrar captura       | Datos guardados localmente           |
      | Ver rutas favoritas     | Visualización local                  |
      | Enviar alerta emergencia| Pendiente hasta que haya conexión    |
