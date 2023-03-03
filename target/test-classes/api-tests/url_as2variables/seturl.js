function fn() {
    var root = 'https://google.com';
    karate.log('root value is:  ', root);

    additionalconfig = {
        root: root
    }
    return additionalconfig;
}