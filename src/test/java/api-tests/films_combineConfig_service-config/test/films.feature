
Feature: Test User API
Background:
  * def configUpdate = call read('../films-config.js')
  * print configUpdate
  * config = karate.merge(config, configUpdate())
  * url apiURL

Scenario: Get schema data
  Given path apiPath
  When method GET
  Then status 200