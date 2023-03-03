Feature: testing karate.get

Background:

Scenario:
    * def createdUser = karate.callSingle('karate-get-setUser.feature', {username: 'changed to default'})
    * print 'updated created user : ',createdUser