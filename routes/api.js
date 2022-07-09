const router = require('express').Router();

const apiProductosRouter = require('./api/productos');
const apiUsuariosRouter = require('./api/usuarios');


router.use('/usuarios', apiProductosRouter);
router.use('/productos', apiUsuariosRouter);

module.exports = router;