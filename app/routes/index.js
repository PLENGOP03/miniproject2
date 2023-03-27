var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.get('/loginForm', function(req, res, next) {
  res.render('loginForm', { title: 'LoginForm' });
});

router.get('/login', function(req, res, next) {
  res.render('login', { title: 'login' });
});

router.get('/product', function(req, res, next) {
  res.render('product', { title: 'product' });
});

router.get('/productForm', function(req, res, next) {
  res.render('productForm', { title: 'productForm' });
});

router.get('/insertForm', function(req, res, next) {
  res.render('insertForm', { title: 'insertForm' });
});

router.get('/updateForm', function(req, res, next) {
  res.render('updateForm', { title: 'updateForm' });
});

router.get('/searchForm', function(req, res, next) {
  res.render('searchForm', { title: 'searchForm' });
});

router.get('/memberForm', function(req, res, next) {
  res.render('memberForm', { title: 'memberForm' });
});

router.get('/addMemSuccess', function(req, res, next) {
  res.render('addMemSuccess', { title: 'addMemSuccess' });
});

router.get('/infoDetail', function(req, res, next) {
  res.render('infoDetail', { title: 'infoDetail' });
});



module.exports = router;
