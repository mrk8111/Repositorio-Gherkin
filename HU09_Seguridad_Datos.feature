Feature: Seguridad de almacenamiento de datos personales

  Scenario: Crear cuenta de forma segura
    Given que el usuario llena sus datos personales
    When los envía al sistema
    Then la app valida mediante un canal cifrado y OTP si es necesario

  Scenario: Almacenamiento seguro de datos
    Given que el usuario guarda rutas y capturas
    When se almacenan los datos
    Then estos son cifrados y protegidos con claves seguras

  Scenario: Notificación de acceso no autorizado
    Given que otro dispositivo intenta acceder a la cuenta del usuario
    When se detecta el intento
    Then la app muestra una notificación y deniega el acceso
