var express = require('express');
var router = express.Router();

/* GET Support page. */
router.get('/', function (req, res, next) {
	var response = [];
    res.render("support.ejs", {data: response});
});

module.exports = router;
