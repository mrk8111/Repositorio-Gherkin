Feature: Alta disponibilidad del sistema

  Escenario: Acceso en horarios no pico
    DADO QUE el pescador artesanal accede a la app entre las 2 y 4 pm, cuando hay poca frecuencia de usuarios
    CUANDO solicita un dato en altamar
    ENTONCES el servidor responde sin demoras
    Y no presenta fallos

    INPUT:
    El pescador artesanal accede a la aplicación entre las 2 y 4 p.m
    El pescador solicita un dato en altamar
    OUTPUT:
    El servidor responde sin demoras
    El sistema no presenta fallos

  Escenario: Acceso durante media concurrencia
    DADO QUE el pescador artesanal accede a la app entre las 10 am y 1 pm, con frecuencia media de usuarios
    CUANDO consulta el mapa de pesca
    ENTONCES el sistema responde rápidamente
    Y no se presentan dificultades

    INPUT:
    El pescador artesanal accede a la aplicación entre las 10 a.m. y 1 p.m
    El pescador consulta el mapa de pesca
    OUTPUT:
    El sistema responde rápidamente
    No se presentan dificultades

  Escenario: Acceso durante alta concurrencia
    DADO QUE el pescador artesanal accede a la app entre las 4 y 9 am, con alta demanda de usuarios
    CUANDO consulta el mapa de pesca
    ENTONCES el sistema responde eficientemente
    Y se gestiona correctamente gracias al balance de carga implementado

    INPUT:
    El pescador artesanal accede a la aplicación entre las 4 y 9 a.m
    El pescador consulta el mapa de pesca
    OUTPUT:
    El sistema responde eficientemente
    La gestión se realiza correctamente gracias al balance de carga implementado
