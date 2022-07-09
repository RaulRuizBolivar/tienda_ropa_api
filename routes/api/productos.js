const router = require('express').Router();
const Producto = require('../../models/producto.model');

router.get('/', async (req, res) => {
	try {
		const productos = await Producto.getAll();
		res.json(productos);
	} catch (err) {
		res.json({ error: err.message });
	}
});

module.exports = router;