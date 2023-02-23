function fn() {
    var subConfig = read('../planets-config.js');
    config = karate.merge(config, subConfig());

    return config;
}