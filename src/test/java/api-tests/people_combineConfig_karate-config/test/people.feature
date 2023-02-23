
Feature: Test User API
Background:
  * def configUpdate = call read('../karate-config.js')
  * print configUpdate
  * config = karate.merge(config, configUpdate())
  * url apiURL

Scenario: Get schema data
  And path apiPath
  When method GET
  Then status 200