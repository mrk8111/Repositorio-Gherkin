Feature: Registro e inicio de sesión

  Scenario: Visualización de usuario nuevo
    Given que es un nuevo usuario de FishMax
    When llena el formulario de registro con sus datos personales
    Then la aplicación crea una cuenta y le permite iniciar sesión
    And le pide registrar su zona de pesca para acceder a los beneficios

  Scenario: Visualización de un usuario antiguo
    Given que el pescador artesanal ya tiene una cuenta
    When inicia sesión con su usuario y contraseña
    Then la aplicación le solicita nuevamente su ubicación de trabajo

  Scenario: Usuario que olvidó su contraseña
    Given que el pescador artesanal olvidó su contraseña
    When solicita la recuperación de contraseña
    Then la app envía un enlace seguro al número registrado
    And el usuario puede iniciar sesión correctamente
