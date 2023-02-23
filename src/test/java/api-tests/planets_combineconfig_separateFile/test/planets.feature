
Feature: Test User API
Background:
  * def configUpdate = call read('../combineConfigs.js')
  * print configUpdate
  * url apiURL

Scenario: Get schema data
  Given path apiPath
  When method GET
  Then status 200