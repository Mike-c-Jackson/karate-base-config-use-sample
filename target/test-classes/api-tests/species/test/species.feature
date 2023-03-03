
Feature: Test User API
Background:
  * url apiURL
  * def apiPath = 'api/species'

Scenario: Get data
  Given path apiPath
  When method GET
  Then status 200

Scenario: Get schema data
  Given path apiPath + '/schema'
  When method OPTIONS
  Then status 200
