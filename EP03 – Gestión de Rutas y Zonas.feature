Feature: Guardar rutas o zonas favoritas

  Escenario: Registrar una zona en favoritos
    DADO QUE el usuario ha visualizado una zona de interés
    Y desea guardarla
    CUANDO selecciona la opción [Guardar como favorita]
    ENTONCES el sistema almacena la zona en el perfil del usuario
    Y se muestra el [mensaje] de confirmación

INPUT:
  zona_seleccionada

OUTPUT:
  mensaje_confirmacion
