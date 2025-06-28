Feature: Seguridad de almacenamiento de datos personales

  Escenario: Encriptación de datos al registrarse
    DADO QUE el usuario completa el formulario de registro
    CUANDO envía sus datos al sistema
    ENTONCES el sistema encripta los datos personales antes de almacenarlos
    Y se garantiza su confidencialidad

INPUT:
  nombre
  correo
  contraseña

OUTPUT:
  datos_encriptados
