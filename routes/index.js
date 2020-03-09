var express = require('express');
var router = express.Router();

router.get('/', (req, res, next) => {

  res.render('template',{
    locals:{
      title: 'Book Reviews'
    },
    partials: {
      partial: 'index-partial'
    }
  });
});

module.exports = router;
