Feature: Visualización de zonas óptimas de pesca

  Escenario: Mostrar zonas óptimas en el mapa
    DADO QUE el usuario ha iniciado sesión exitosamente
    Y otorgó acceso a su ubicación actual
    CUANDO selecciona la opción [Zonas Óptimas]
    ENTONCES el sistema calcula y muestra en el mapa las zonas óptimas de pesca
    Y se presentan detalles como [marea], [temperatura], [profundidad]

INPUT:
  ubicación

OUTPUT:
  zonas_optimas
  condiciones
