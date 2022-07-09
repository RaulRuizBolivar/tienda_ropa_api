const router = require( 'express' ).Router()



router.use( '/clientes', require( './api/clientes' ) )
router.use( '/productos', require( './api/productos' ) )



module.exports = router