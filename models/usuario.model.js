const { executeQuery, executeQueryOne } = require('../helpers/utils');

const getById = (id) => {
    return executeQueryOne('select * from usuario where id = ?', [id]);
};

const create = ({ email, password, nombre_completo, direccion }) => {
    return executeQuery(
        'INSERT INTO usuario (email, password, nombre_completo, direccion) VALUES (?,?,?,?)',
        [email, password, nombre_completo, direccion]);
};


module.exports = { create, getById }