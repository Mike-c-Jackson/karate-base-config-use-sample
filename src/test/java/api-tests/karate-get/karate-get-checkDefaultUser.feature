Feature: testing karate.get

Background:
    * def createdUser = karate.callSingle('karate-get-setUser.feature', {username: 'Mike'})
    * print 'initially created user : ',createdUser
    * def createdUser = karate.get('createdUser', karate.callSingle('karate-get-setUser.feature', {username: 'changed to default'}))

Scenario:
    * print 'updated created user : ',createdUser