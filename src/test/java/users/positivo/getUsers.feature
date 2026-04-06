Feature: Listar usuarios

  Scenario: Obtener lista de usuarios

    * def userSchema = read('classpath:schemas/userSchema.json')

    Given url baseUrl
    And path 'usuarios'
    When method GET
    Then status 200

    And match response.usuarios == '#array'
    And match each response.usuarios == userSchema