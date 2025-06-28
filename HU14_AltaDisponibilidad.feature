Feature: Alta disponibilidad del sistema

  DADO QUE el pescador artesanal accede a la app en un horario entre las 2-4 pm, donde no hay mucha frecuencia de usuarios utilizando la app
  CUANDO solicita un dato en altamar
  ENTONCES el servidor responde sin demoras, ni fallos

  DADO QUE el pescador artesanal accede a la app en un horario entre las 10 am -1 pm, donde hay frecuencia de usuarios utilizando la app
  CUANDO consulta el mapa de pesca
  ENTONCES el sistema responde rápidamente, no se encuentran dificultades

  DADO QUE el pescador artesanal accede a la app en un horario entre las 4-9 am, donde hay demanda de frecuencia de usuarios utilizando la app
  CUANDO consulta el mapa de pesca
  ENTONCES el sistema responde gracias al balance de carga implementado al desarrollar la app

INPUT:
  - Hora de acceso
  - Acción solicitada (consultar mapa de pesca o solicitar datos)

OUTPUT:
  - Tiempo de respuesta
  - Estado del sistema (sin fallos / balanceado / rápido)
