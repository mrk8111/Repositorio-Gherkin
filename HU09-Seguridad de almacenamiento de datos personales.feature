Feature: Seguridad de almacenamiento de datos personales

  Escenario: Creación de cuenta segura
    DADO QUE el usuario está registrando sus datos personales en la app
    CUANDO los ingresa para crear una cuenta
    ENTONCES la aplicación valida mediante un canal cifrado
    Y solicita autenticación OTP si se detecta un dispositivo no reconocido

    INPUT:
    Ingreso de datos personales para crear una cuenta
    OUTPUT:
    Validación de datos mediante un canal cifrado
    Solicitud de autenticación OTP si se detecta un dispositivo no reconocido

  Escenario: Cifrado de datos almacenados
    DADO QUE el pescador artesanal guarda información sobre rutas y faenas diarias
    CUANDO la aplicación almacena esos datos
    ENTONCES estos son cifrados
    Y protegidos mediante claves seguras

    INPUT:
    La aplicación almacena información sobre rutas y faenas diarias
    OUTPUT:
    Datos cifrados
    Datos protegidos mediante claves seguras

  Escenario: Notificación por intento de acceso externo
    DADO QUE el pescador artesanal ya inició sesión desde su celular
    CUANDO otro dispositivo intenta acceder a su cuenta
    ENTONCES la app envía una notificación inmediata
    Y solicita confirmación del usuario

    INPUT:
    Un dispositivo distinto al habitual intenta acceder a la cuenta del usuario.
    OUTPUT:
    Notificación inmediata enviada al dispositivo original del usuario
    Solicitud de confirmación del usuario para el intento de acceso
