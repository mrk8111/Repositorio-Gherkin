Feature: Registro e inicio de sesión

  Escenario: Visualización de usuario nuevo
    DADO QUE el usuario es nuevo en FishMax
    CUANDO completa el formulario con sus datos personales
    ENTONCES la aplicación crea su cuenta
    Y le solicita registrar su zona de pesca para habilitar los beneficios

    INPUT:
    Datos personales del usuario (nombre, correo electrónico, contraseña, etc.)
    OUTPUT:
    Cuenta de usuario creada
    Mensaje solicitando el registro de la zona de pesca.

  Escenario: Visualización de usuario antiguo
    DADO QUE el usuario ya tiene una cuenta en FishMax
    CUANDO inicia sesión con su nombre de usuario y contraseña
    ENTONCES la aplicación lo autentica correctamente
    Y le solicita su ubicación actual para actualizar su información de faena

    INPUT:
    Nombre de usuario (o correo electrónico)
    Contraseña
    OUTPUT:
    Usuario autenticado correctamente
    Mensaje solicitando la ubicación actual para actualizar la información de faena

  Escenario: Visualización de usuario que olvidó su contraseña
    DADO QUE el usuario olvidó su contraseña al intentar iniciar sesión
    CUANDO solicita recuperar su acceso
    ENTONCES la aplicación le envía un enlace seguro al número registrado
    Y puede ingresar a la app y acceder a sus beneficios normalmente

    INPUT:
    Solicitud de recuperación de acceso (presumiblemente con el número de teléfono registrado o correo electrónico)
    OUTPUT:
    Envío de un enlace seguro al número registrado (o correo electrónico)
    Acceso a la aplicación y beneficios habilitado
