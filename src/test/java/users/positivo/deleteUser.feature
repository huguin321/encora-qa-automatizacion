Feature: Eliminar usuario

  Scenario: Eliminar usuario existente

    * def createResponse = call read('classpath:users/positivo/createUser.feature')
    * def userId = createResponse.response._id

    # DELETE
    Given url baseUrl
    And path 'usuarios', userId
    When method DELETE
    Then status 200
    And match response contains { message: '#string' }

    # VALIDACIÓN REAL
    Given url baseUrl
    And path 'usuarios', userId
    When method GET
    Then status 400
    And match response contains { message: '#string' }