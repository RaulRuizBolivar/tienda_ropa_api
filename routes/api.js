const router = require( 'express' ).Router();

const apiProductosRouter = require( './api/productos' );
const apiUsuariosRouter = require( './api/usuarios' );



router.use( '/usuarios', require( './api/usuarios' ) )
router.use( '/productos', require( './api/productos' ) )

module.exports = router;