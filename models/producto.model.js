const { executeQuery, executeQueryOne } = require('../helpers/utils');

const getAll = () => {
    executeQuery('select * from producto');
};

const getProductById = (id) => {
    executeQueryOne('select * from producto where id = ?', [id]);
};

const getProductsByType = (tipo) => {
    return executeQuery('select * from producto where tipo = ?', [tipo]);
};

const getProductsByColor = (color) => {
    return executeQuery('select * from producto where color = ?', [color]);
};

const getProductsByCategory = (categoria) => {
    return executeQuery('select * from producto where categoria = ?', [categoria]);
};

const create = ({ nombre, precio, categoria, tipo, talla, color, stock, disponibilidad, imagen }) => {
    executeQuery('insert into producto (nombre, precio, categoria, tipo, talla, color, stock, disponibilidad, imagen) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)', [nombre, precio, categoria, tipo, talla, color, stock, disponibilidad, imagen]);
};

const updateById = (id, { nombre, precio, categoria, tipo, talla, color, stock, disponibilidad, imagen }) => {
    executeQuery('update producto set nombre = ?, precio = ?, categoria = ?, tipo = ?, talla = ?, color = ?, stock = ?, disponibilidad = ?, imagen = ? where id = ?', [nombre, precio, categoria, tipo, talla, color, stock, disponibilidad, imagen, id]);
};

const updateByCategory = (categoria, { nombre, precio, tipo, talla, color, stock, disponibilidad, imagen }) => {
    executeQuery('update producto set nombre = ?, precio = ?, tipo = ?, talla = ?, color = ?, stock = ?, disponibilidad = ?, imagen = ? where categoria = ?', [nombre, precio, tipo, talla, color, stock, disponibilidad, imagen, categoria]);
};

const updateByType = (tipo, { nombre, precio, categoria, talla, color, stock, disponibilidad, imagen }) => {
    executeQuery('update producto set nombre = ?, precio = ?, categoria = ?, talla = ?, color = ?, stock = ?, disponibilidad = ?, imagen = ? where tipo = ?', [nombre, precio, categoria, talla, color, stock, disponibilidad, imagen, tipo]);
};

const deleteById = (id) => {
    executeQuery('delete from producto where id = ?', [id]);
};

module.exports = {
    getAll,
    getProductById,
    getProductsByType,
    getProductsByColor,
    getProductsByCategory,
    create,
    updateById,
    updateByType,
    updateByCategory,
    deleteById
};