
Feature: Test User API
Background:
  * url apiURL

Scenario: Get schema data
  And path 'api'
  When method GET
  Then status 200