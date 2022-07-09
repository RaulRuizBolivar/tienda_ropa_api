const { executeQuery, executeQueryOne } = require( '../helpers/utils' )

const getById = ( id ) => {
	return executeQueryOne( 'select * from usuario where id = ?', [ id ] )
}

module.exports = { getById }