const { executeQuery, executeQueryOne } = require('../helpers/utils');

const getById = (id) => {
    return executeQueryOne('select * from usuario where id = ?', [id]);
};

const getByEmail = (email) => {
    return executeQueryOne('SELECT * FROM usuario WHERE email = ?', [email]);
};

const create = ({ email, password, nombre_completo, direccion }) => {
    return executeQuery(
        'INSERT INTO usuario (email, password, nombre_completo, direccion) VALUES (?,?,?,?)',
        [email, password, nombre_completo, direccion]);
};




module.exports = { getById, getByEmail, create }