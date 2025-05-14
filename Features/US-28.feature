Feature: US28 - Descargar la aplicación de CambiaZo

  Como usuario visitante
  Quiero encontrar botones o enlaces claramente visibles en la landing page que me dirijan a la descarga de la aplicación de CambiaZo
  Para poder registrarme, intercambiar o donar artículos directamente desde mi dispositivo móvil

  Scenario: Identificación de botones o enlaces para descargar la app
    Given  el usuario está en la landing page de CambiaZo
    When busque descargar la aplicación
    Then encontrará botones o enlaces fácilmente identificables que lo dirijan a la descarga de la aplicación

  Scenario: Descarga rápida y sin problemas
    Given  el usuario se dirige a un botón o enlace de descarga
    When el usuario le dé clic al botón
    Then la aplicación de CambiaZo se descargará de manera rápida
    And sin problemas en su dispositivo móvil
