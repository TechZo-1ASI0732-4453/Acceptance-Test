Feature: US02 - Editar perfil del usuario
  Como usuario ya registrado
  Quiero realizar modificaciones en mi perfil
  Para asegurarme de que mi información esté siempre actualizada

  Scenario Outline: Acceso del usuario a "Mi perfil"
    Given el <usuario> está registrado en la aplicación
    When accede a su perfil
    Then el sistema presentará la página "Mi perfil"

    Examples:
      | usuario |
      | Pedro   |

  Scenario Outline: El usuario elige editar su perfil
    Given el <usuario> se encuentra en la página "Mi perfil" con los datos personales visibles
    When selecciona el botón "Editar perfil"
    Then el sistema mostrará la página de edición de perfil

    Examples:
      | usuario |
      | Pedro   |

  Scenario Outline: Actualización exitosa de los datos del perfil del usuario
    Given el <usuario> se encuentra en la página de edición de perfil con los datos personales visibles
    When ingresa los nuevos datos: <nombre>, <correo>, <teléfono>, <imagen>
    And selecciona el botón "Guardar cambios"
    Then el sistema actualizará la información del perfil del usuario con los nuevos datos ingresados

    Examples:
      | usuario | nombre     | correo              | teléfono   | imagen                               |
      | Pedro   | Pedro Mejía| pedro@email.com     | 987654321  | https://img.com/foto_perfil_pedro.jpg|

  Scenario Outline: Actualización de los datos del perfil del usuario con información inválida o incompleta
    Given el <usuario> se encuentra en la página de edición de perfil con los datos personales visibles
    When ingresa datos incompletos o inválidos: <nombre>, <correo>, <teléfono>, <imagen>
    And selecciona el botón "Actualizar"
    Then la aplicación mostrará un mensaje de "Error"
    And borrará los datos ingresados

    Examples:
      | usuario | nombre | correo          | teléfono | imagen       |
      | Pedro   |        | pedro@email.com |          |              |
