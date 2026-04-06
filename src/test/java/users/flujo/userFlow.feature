Feature: Flujo completo usuario

  Scenario: Crear, obtener y validar usuario

    * def user = call generateUser
    * def userSchema = read('classpath:schemas/userSchema.json')

    # CREATE
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

    * def userId = response._id

    # GET
    Given url baseUrl
    And path 'usuarios', userId
    When method GET
    Then status 200

    And match response == userSchema
    And match response._id == userId
    And match response.email == user.email
    And match response.nome == user.nombre