Feature: US29 - Ver los planes y precios

  Como usuario visitante
  Quiero tener acceso a una sección que detalle los planes ofrecidos por la plataforma
  Para poder evaluar las opciones disponibles antes de descargar la aplicación

  Scenario: Acceso a la sección de planes y servicios
    Given  el usuario visita la landing page de Cambiazo
    When busque información sobre los planes y servicios ofrecidos por la plataforma
    Then encontrará una sección dedicada que detalle estos aspectos

  Scenario: Comparación de planes
    Given  el usuario revisa la información sobre los planes ofrecidos
    When busque tomar una decisión informada
    Then encontrará que puede comparar fácilmente los diferentes planes para evaluar cuál se ajusta mejor a sus necesidades
