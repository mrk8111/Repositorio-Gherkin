Feature: Tiempos de carga aceptables

  Escenario: Verificar tiempos de respuesta
    DADO QUE el usuario navega por la app
    CUANDO accede a funcionalidades como [Zonas Óptimas], [Perfil], [Alertas]
    ENTONCES el sistema responde en menos de 2 segundos
    Y permite una experiencia fluida

INPUT:
  secciones_app

OUTPUT:
  tiempo_respuesta
