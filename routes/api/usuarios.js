const router = require('express').Router()
const bcrypt = require('bcryptjs');

router.get('/', (req, res) => {
	res.json({ success: 'success' })
})


module.exports = router