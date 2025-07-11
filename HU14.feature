Feature: Acceso al sistema sin interrupciones

  Como pescador artesanal
  Quiero que la aplicación esté disponible casi todo el tiempo
  Para poder usarla cuando lo necesite sin importar la hora

  Scenario: Acceso en horarios con poca gente conectada
    Given que el pescador artesanal accede a la app entre las 2 y 4 de la tarde
    When solicita información desde altamar
    Then el sistema responde rápido y sin errores

  Scenario: Acceso en horarios con uso medio
    Given que el pescador accede entre las 10 am y 1 pm
    When consulta el mapa de zonas de pesca
    Then la app carga correctamente sin mostrar problemas de conexión

  Scenario: Acceso en horas con mucha demanda
    Given que el pescador usa la app entre las 4 y 9 am (cuando más gente la usa)
    When abre el mapa y revisa datos
    Then el sistema sigue funcionando bien gracias a un buen manejo de usuarios

  Scenario Outline: Validar comportamiento según franja horaria
    Given que se hace una prueba de acceso
    When se conecta a la app en los siguientes horarios:
      | Hora           | Nivel de uso | Resultado esperado              |
      | <hora>         | <uso>        | <resultado>                     |
    Then el sistema responde de acuerdo a la carga esperada

    Examples:
      | hora   | uso         | resultado                      |
      | 03:00  | Bajo        | Respuesta rápida               |
      | 11:00  | Medio       | Funciona sin errores           |
      | 06:00  | Alto        | Optimizado por balance de carga |
