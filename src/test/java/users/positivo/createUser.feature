Feature: Crear usuario

  Scenario: Crear usuario correctamente

    * def user = call generateUser

    Given url baseUrl
    And path 'usuarios'
    And request
      """
      {
        "nome": "#(user.nombre)",
        "email": "#(user.email)",
        "password": "#(user.password)",
        "administrador": "#(user.administrador)"
      }
      """
    When method POST
    Then status 201

    # mínimo para reutilización
    And match response contains { _id: '#string' }