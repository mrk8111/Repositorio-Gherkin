Feature: Capacidad del sistema de operar sin conexión

  Escenario: Funcionar sin internet
    DADO QUE el usuario se encuentra sin conexión
    CUANDO accede a rutas o zonas guardadas previamente
    ENTONCES el sistema le permite visualizar la información sin errores
    Y sincroniza los cambios cuando se recupere la conexión

INPUT:
  datos_cache

OUTPUT:
  visualizacion_correcta
