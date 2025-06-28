Feature: Tolerancia a fallos de red

  Escenario: Registro de captura sin conexión
    DADO QUE el pescador artesanal está sin internet y necesita utilizar la aplicación Fishmax
    CUANDO registra alguna captura
    ENTONCES la app almacena el dato localmente gracias a su Big Data
    Y lo sincroniza automáticamente cuando se restablece la conexión

  Escenario: Visualización de mapa offline
    DADO QUE el usuario está en altamar y perdió la señal
    CUANDO abre el mapa offline
    ENTONCES la aplicación de Fishmax muestra las zonas previamente descargadas
    Y permite navegar el mapa sin necesidad de conexión

  Escenario: Recolección de datos sin señal
    DADO QUE el pescador artesanal está en una zona sin cobertura de red
    CUANDO los sensores del sistema recolectan datos como temperatura o velocidad del viento
    ENTONCES la aplicación almacena los datos localmente
    Y los sincroniza con el servidor al recuperar la conexión para evitar pérdida de información crítica
