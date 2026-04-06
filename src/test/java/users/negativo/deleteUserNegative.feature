Feature: Eliminar usuario inexistente

  Scenario: Intentar eliminar usuario que no existe

    * def fakeId = '1234567890abcdef'

    Given url baseUrl
    And path 'usuarios', fakeId
    When method DELETE
    Then status 200

    And match response contains { message: '#string' }