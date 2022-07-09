const { executeQuery, executeQueryOne } = require( '../helpers/utils' )
const Producto = require( './producto.model' )

const getAllProductsById = async ( id ) => {
	let pedidos = await executeQuery( 'select * from pedidos where usuario_id = ?', [ id ] )
	let pedidosReturn = []
	for ( let pedido of pedidos ) {
		pedidosReturn.push( await Producto.getProductById( pedido.producto_id ) )
		console.log( pedidosReturn )
	};
	console.log( pedidos )
	return pedidosReturn
}

module.exports = { getAllProductsById }