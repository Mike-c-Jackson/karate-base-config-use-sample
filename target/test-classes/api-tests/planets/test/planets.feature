
Feature: Test User API
Background:
  * call read('../planets-config.js')
  * url apiURL

Scenario: Get schema data
  Given path apiPath
  When method GET
  Then status 200