Feature: Soporte multiplataforma

  Escenario: Acceso desde diferentes dispositivos
    DADO QUE el usuario tiene una cuenta registrada
    CUANDO inicia sesión desde una plataforma distinta (Android, iOS, Web)
    ENTONCES el sistema permite el acceso sin errores
    Y mantiene sincronizados los datos

INPUT:
  credenciales
  tipo_dispositivo

OUTPUT:
  acceso_correcto
  datos_sincronizados
