const { executeQuery, executeQueryOne } = require( '../helpers/utils' )
const Producto = require( './producto.model' )

const getAllProductsById = async ( id ) => {
	let pedidos = await executeQuery( 'select * from pedidos where usuario_id = ?', [ id ] )
	for ( let pedido of pedidos ) {
		pedido.producto = []
		pedido.producto.push( await Producto.getProductById( pedido.producto_id ) )
	};
	return pedidos
}

module.exports = { getAllProductsById }