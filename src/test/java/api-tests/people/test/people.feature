
Feature: Test User API
Background:
  * print filmResultsPassed
  * def filmResultsPassed = karate.get('filmResultsPassed',karate.call('classpath:api-tests/films/test/films.feature'))
  * url apiURL

Scenario: Get schema data
  And path '/api/people'
  When method GET
  Then status 200