Feature: Seguridad de almacenamiento de datos personales

  Como usuario de FishMax
  Quiero que la aplicación garantice la seguridad en mis datos personales
  Para confiar plenamente en el uso del sistema

  Scenario: Creación segura de cuenta con autenticación
    Given que el usuario está llenando sus datos personales para crear su cuenta
    When ingresa su número telefónico y otros datos
    Then la app valida la información mediante un canal cifrado
    And solicita autenticación OTP si detecta un dispositivo no reconocido

  Scenario: Almacenamiento cifrado de rutas y registros
    Given que el pescador artesanal guarda sus rutas y faenas diarias en la app
    When la aplicación almacena estos datos
    Then la información se cifra automáticamente
    And se protege con claves seguras

  Scenario: Notificación de acceso sospechoso a la cuenta
    Given que el usuario ha iniciado sesión desde su celular personal
    When otro dispositivo intenta ingresar a su cuenta
    Then la app envía una notificación inmediata de intento de acceso
    And deniega el ingreso hasta que el usuario lo confirme

  Scenario Outline: Validación de seguridad en funciones sensibles
    Given que el sistema debe proteger información crítica
    When se ejecutan las siguientes acciones:
      | Acción                  | Estado esperado       |
      | <accion>                | <estado>              |
    Then la app debe responder con las políticas de seguridad correspondientes

    Examples:
