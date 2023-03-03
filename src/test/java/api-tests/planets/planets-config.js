function fn() {

    filmsResults = karate.callSingle('classpath:api-tests/films/test/films.feature')
    karate.log('filmsResults: ', filmsResults);
    peopleResults = karate.callSingle('classpath:api-tests/people/test/people.feature', { filmResultsPassed: filmsResults})
    karate.log('peopleResults: ', peopleResults);

    var planetsConfig = {
      apiPath: '/api/planets?episode_id=5'
    };

    return planetsConfig;
}