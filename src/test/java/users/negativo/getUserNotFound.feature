Feature: Obtener usuario inexistente

  Scenario: Buscar usuario que no existe

    * def fakeId = '1234567890abcdef'

    Given url baseUrl
    And path 'usuarios', fakeId
    When method GET
    Then status 400

    And match response contains { message: '#string' }