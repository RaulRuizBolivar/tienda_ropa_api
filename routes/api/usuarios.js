const router = require( 'express' ).Router()
const Usuario = require( '../../models/usuario.model' )
const Pedido = require( '../../models/pedido.model' )
const Producto = require( '../../models/producto.model' )


router.get( '/', ( req, res ) => {
	res.json( { success: 'success' } )
} )

router.get( '/:id', async ( req, res ) => {
	try {
		const userId = req.params.id
		const user = await Usuario.getById( userId )
		user.pedidos = await Pedido.getById( userId )
		res.json( user )
	} catch ( err ) {
		res.status( 400 ).json( { error: err.message } )
	}
} )


module.exports = router