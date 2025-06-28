Feature: Tolerancia a fallos de red

  Escenario: Registro de captura sin conexión
    DADO QUE el pescador artesanal está sin internet y necesita utilizar la aplicación Fishmax
    CUANDO registra alguna captura
    ENTONCES la app almacena el dato localmente gracias a su Big Data
    Y lo sincroniza automáticamente cuando se restablece la conexión

    INPUT:
    El pescador registra una captura mientras está sin conexión a internet
    OUTPUT:
    El dato de la captura se almacena localmente en la aplicación
    El dato se sincroniza automáticamente con el servidor cuando se restablece la conexión a internet

  Escenario: Visualización de mapa offline
    DADO QUE el usuario está en altamar y perdió la señal
    CUANDO abre el mapa offline
    ENTONCES la aplicación de Fishmax muestra las zonas previamente descargadas
    Y permite navegar el mapa sin necesidad de conexión

    INPUT:
    El usuario abre el mapa en la aplicación mientras está sin señal (en altamar)
    OUTPUT:
    La aplicación muestra las zonas del mapa previamente descargadas
    El usuario puede navegar el mapa sin necesidad de conexión a internet

  Escenario: Recolección de datos sin señal
    DADO QUE el pescador artesanal está en una zona sin cobertura de red
    CUANDO los sensores del sistema recolectan datos como temperatura o velocidad del viento
    ENTONCES la aplicación almacena los datos localmente
    Y los sincroniza con el servidor al recuperar la conexión para evitar pérdida de información crítica

    INPUT:
    Los sensores del sistema recolectan datos en una zona sin cobertura de red
    OUTPUT:
    La aplicación almacena los datos localmente
    Los datos se sincronizan con el servidor al recuperar la conexión, evitando la pérdida de información crítica
