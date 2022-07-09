const { executeQuery, executeQueryOne } = require( '../helpers/utils' )

const getById = ( id ) => {
	return executeQuery( 'select * from pedidos where usuario_id = ?', [ id ] )
}

module.exports = { getById }