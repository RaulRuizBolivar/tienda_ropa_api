const router = require('express').Router();
const bcrypt = require('bcryptjs');
const { body, validationResult } = require('express-validator');

const Usuario = require('../../models/usuario.model');

router.post('/registro',
	body('email')
		.exists()
		.withMessage('El campo de email es requerido')
		.isEmail()
		.withMessage('El email debe tener un formato correcto'),
	body('password')
		.exists()
		.withMessage('El campo de password es requerido'),
	body('nombre_completo')
		.exists()
		.withMessage('El campo de nombre_completo es requerido'),
	body('direccion')
		.exists()
		.withMessage('El campo de direccion es requerido')
	, async (req, res) => {

		// Comprobar los errores de las diferentes validaciones
		const errors = validationResult(req);
		if (!errors.isEmpty()) {
			return res.json(errors.array());
		};

		try {
			// Encriptasió de pass
			req.body.password = bcrypt.hashSync(req.body.password, 13);

			// Creación del usuario
			const result = await Usuario.create(req.body);
			res.json(result);
		} catch (err) {
			res.json({ error: err.message });
		}

	});


module.exports = router;