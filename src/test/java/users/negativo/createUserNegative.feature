Feature: Crear usuario negativo

  Scenario: Crear usuario con email duplicado

    * def user = call generateUser

    # CREATE OK
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

    # DUPLICADO
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
    Then status 400

    And match response contains { message: '#string' }