Feature: TS05 - API Object

  Como usuario developer que configura la plataforma
  Quiero diseñar una API que facilite la gestión de objetos
  Para que los usuarios puedan subir sus objetos que ya no utilizan

  Scenario: Diseño de la API de Objetos
    Given  el usuario developer está configurando la plataforma
    When diseña la API de Objetos para gestionar los objetos que suben los usuarios
    Then define los endpoints y rutas necesarios para permitir a los usuarios subir sus objetos que ya no usan
    And cancelar la subida y obtener información sobre sus objetos
    And establece los requisitos de requerimiento y tipo de archivo

  Scenario: Obtener información de un objeto
    Given  el endpoint "/objects" está disponible
    When se envía una solicitud GET con el identificador del objeto
    Then se recibe una respuesta con estado 200
    And se obtienen los detalles del objeto solicitado

  Scenario: Objeto no encontrado
    Given  el endpoint "/objects" está disponible
    When se envía una solicitud GET con un identificador de un objeto que no existe
    Then se recibe una respuesta con estado 404
    And se muestra un mensaje que indica "No se encontró el objeto solicitado"

  Scenario: Creación de un nuevo objeto
    Given  el endpoint "/objects" está disponible
    When se envía una solicitud POST con los detalles del objeto y el usuario asociado
    Then se recibe una respuesta con estado 201
    And se registra el objeto con un nuevo ID y los detalles registrados

  Scenario: Crear un objeto ya existente
    Given  el endpoint "/objects" está disponible
    When se intenta crear un nuevo objeto para un usuario que ya registró este objeto
    Then se recibe una respuesta con estado 400
    And se muestra un mensaje que indica "El usuario ya registró este objeto"

  Scenario: Eliminar un objeto
    Given  el endpoint "/objects" está disponible
    When se envía una solicitud DELETE con los detalles del objeto y el usuario asociado
    Then se recibe una respuesta con estado 200
    And se elimina el objeto con su ID y los detalles registrados

  Scenario: Editar un objeto
    Given  el endpoint "/objects" está disponible
    When se envía una solicitud PUT con los detalles del objeto y el usuario asociado
    Then se recibe una respuesta con estado 200
    And se editarán los detalles previamente registrados del objeto
