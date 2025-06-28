Feature: Tolerancia a fallos de red

  DADO QUE el pescador artesanal está sin internet y necesita utilizar la aplicación Fishmax
  CUANDO registra alguna captura
  ENTONCES la app almacena gracias a su Big Data el dato localmente y sincroniza cuando se restablezca la conexión

  DADO QUE el usuario está en altamar y perdió la señal
  CUANDO abre el mapa offline
  ENTONCES la aplicación de Fishmax muestra las zonas previamente descargadas sin necesidad de conexión

  DADO QUE el pescador artesanal está en una zona sin cobertura de red
  CUANDO los sensores del sistema (por ejemplo, de temperatura del agua o velocidad del viento) recolectan datos
  ENTONCES la aplicación almacena los datos de los sensores localmente y los sincroniza con el servidor en cuanto se recupere la conexión, asegurando que no se pierda información crítica

INPUT:
  - Registro de captura
  - Acceso al mapa offline
  - Recolección de datos desde sensores sin conexión

OUTPUT:
  - Almacenamiento local
  - Sincronización automática al recuperar conexión
  - Visualización sin conexión
