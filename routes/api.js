const router = require('express').Router();

const apiProductosRouter = require('./api/productos');
const apiUsuariosRouter = require('./api/usuarios');


router.use('/usuarios', apiUsuariosRouter)
router.use('/productos', apiProductosRouter)

module.exports = router;