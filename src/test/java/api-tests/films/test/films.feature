
Feature: Test User API
Background:
  * url apiURL

Scenario: Get schema data
  Given path '/api/films'
  When method GET
  Then status 200