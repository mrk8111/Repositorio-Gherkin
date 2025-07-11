Feature: Tiempos de carga aceptables en la aplicación

  Como usuario
  Quiero que la aplicación cargue los datos en un tiempo aceptable (menos de 4 segundos)
  Para no perder tiempo laboral ni desconfiar del funcionamiento del sistema

  Scenario: Tiempo excesivo al iniciar sesión
    Given que el pescador artesanal necesita ingresar rápidamente a la app
    When inicia sesión en FishMax
    And el tiempo de carga es de 5 segundos
    Then el usuario percibe que la app no es suficientemente eficiente

  Scenario: Carga rápida del mapa a pesar de baja conexión
    Given que el usuario tiene baja conexión a internet
    And necesita acceder al mapa de pesca
    When selecciona la opción "Mapa de zonas"
    Then la app carga en menos de 3 segundos
    And muestra las zonas preferenciales sin errores

  Scenario Outline: Validación de tiempo de carga en funciones clave
    Given que el pescador utiliza funciones críticas de la app
    When accede a:
      | Función             | Tiempo esperado | Tiempo real |
      | <funcion>           | <esperado>      | <real>      |
    Then se valida si cumple con el umbral de eficiencia

    Examples:
      | funcion           | esperado | real |
      | Inicio de sesión  | < 4 s    | 3.5s |
      | Mapa de zonas     | < 4 s    | 2.2s |
      | Ver favoritos     | < 4 s    | 1.8s |
