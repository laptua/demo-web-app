var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  const version = "Express " + process.env.VERSION;
  res.render('index', { title: version  });
});

module.exports = router;
