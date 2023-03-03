Feature:
Background:
    * callonce read('seturl.js')
    * url root
    # * url 'https://www.google.com'    

Scenario Outline:
    #Given url root
    Given path 'search'
        And params {q: <option>}
    When method GET
    Then status 200

    Examples:
    | option  |
    | karate  |
    | api     |
    | test    |
    | graphql |

Scenario:
    Given path 'search'
        And params {q: 'rest service'}
    When method GET
    Then status 200