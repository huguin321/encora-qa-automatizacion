Feature: Actualizar usuario

  Scenario: Actualizar usuario existente

    * def createResponse = call read('classpath:users/positivo/createUser.feature')
    * def userId = createResponse.response._id
    * def user = call generateUser
    * def userSchema = read('classpath:schemas/userSchema.json')

    # UPDATE
    Given url baseUrl
    And path 'usuarios', userId
    And request
      """
      {
        "nome": "#(user.nombre)",
        "email": "#(user.email)",
        "password": "#(user.password)",
        "administrador": "#(user.administrador)"
      }
      """
    When method PUT
    Then status 200
    And match response contains { message: '#string' }

    # GET VALIDACIÓN
    Given url baseUrl
    And path 'usuarios', userId
    When method GET
    Then status 200

    And match response == userSchema
    And match response.email == user.email
    And match response.nome == user.nombre