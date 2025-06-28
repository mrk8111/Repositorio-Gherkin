Feature: Soporte multiplataforma

  DADO QUE el pescador artesanal tiene un dispositivo en iOS y necesita la app, abrirá App Store
  CUANDO instale la app desde App Store
  ENTONCES la aplicación se ejecuta con las mismas funcionalidades que cualquier otro dispositivo porque está programada para cualquier dispositivo o necesidad

  DADO QUE el pescador artesanal tiene un dispositivo en Android y necesita la app, abrirá Play Store
  CUANDO instale la app desde Play Store
  ENTONCES la aplicación funciona de manera estable y sin errores en su programa

  DADO QUE el pescador artesanal se le hace más fácil utilizarla desde el navegador
  CUANDO abre la app por vía Web
  ENTONCES la aplicación muestra correctamente la interfaz y funciones básicas

INPUT:
  - Plataforma de acceso (iOS, Android, Web)
  - Instalación o acceso vía navegador

OUTPUT:
  - Funcionamiento estable
  - Interfaz y funcionalidades correctas
