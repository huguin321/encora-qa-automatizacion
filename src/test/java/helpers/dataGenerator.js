function generateUser() {
    var uuid = java.util.UUID.randomUUID();
    return {
        nombre: 'Hugo Ramos',
        email: 'user_' + uuid + '@test.com',
        password: '123456',
        administrador: 'true'
    };
}