const router = require( 'express' ).Router();

const apiProductosRouter = require( './api/productos' );
const apiUsuariosRouter = require( './api/usuarios' );


<<<<<<< Updated upstream
router.use( '/usuarios', apiUsuariosRouter );
router.use( '/productos', apiProductosRouter );
=======
router.use('/productos', apiProductosRouter);
router.use('/usuarios', apiUsuariosRouter);
>>>>>>> Stashed changes

module.exports = router;