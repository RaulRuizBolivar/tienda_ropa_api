const { executeQuery, executeQueryOne } = require('../helpers/utils')

const create = ({ email, password, nombre_completo, direccion }) => {
    return executeQuery(
        'INSERT INTO usuario (email, password, nombre_completo, direccion) VALUES (?,?,?,?)',
        [email, password, nombre_completo, direccion]);
};

module.exports = { create }