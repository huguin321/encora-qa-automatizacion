function fn() {
    var config = {
        baseUrl: 'https://serverest.dev'
    };

    karate.configure('logPrettyRequest', true);
    karate.configure('logPrettyResponse', true);

    config.generateUser = read('classpath:helpers/dataGenerator.js');

    return config;
}