const router = require( 'express' ).Router()



router.use( '/usuarios', require( './api/usuarios' ) )
router.use( '/productos', require( './api/productos' ) )



module.exports = router