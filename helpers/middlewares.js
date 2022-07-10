const dayjs = require("dayjs");
const jwt = require("jsonwebtoken");
const Usuario = require("../models/usuario.model");

const checkToken = async (req, res, next) => {

	// Is token in headers?
	if (!req.headers['authorization']) {
		return res.json({ error: 'No llevas el token encima, go back.' });
	};

	// Is token correct?
	const token = req.headers['authorization'];

	let obj;
	try {
		obj = jwt.verify(token, "baba12345");
	} catch (err) {
		return res.json({ error: 'El token no es correcto.' });
	};

	// Is token expired?

	if (dayjs().unix() > obj.expDate) {
		return res.json({ error: 'Token caducado, go back home.' });
	};

	// console.log(obj);
	// Recuperamos user que intenta loguearse
	const user = await Usuario.getById(obj.userId);
	req.user = user;

	next();
};

module.exports = { checkToken };