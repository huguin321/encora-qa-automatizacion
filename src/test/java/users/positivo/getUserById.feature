Feature: Obtener usuario por ID

  Scenario: Obtener usuario existente

    * def createResponse = call read('classpath:users/positivo/createUser.feature')
    * def userId = createResponse.response._id
    * def userSchema = read('classpath:schemas/userSchema.json')

    Given url baseUrl
    And path 'usuarios', userId
    When method GET
    Then status 200

    And match response == userSchema