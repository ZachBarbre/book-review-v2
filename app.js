const express = require('express'),
 path = require('path'),
 cookieParser = require('cookie-parser'),
 logger = require('morgan'),
 session = require('express-session'),
 FileStore = require('session-file-store')(session),
 es6Renderer = require('express-es6-template-engine');

 const indexRouter = require('./routes/index'),
 usersRouter = require('./routes/users');

 app = express();

app.engine('html', es6Renderer);
app.set('views', './views');
app.set('view engine', 'html');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
app.use(session({
    store: new FileStore(),
    secret: 'lovebooks',
    resave: false,
    saveUninitialized: false,
    is_logged_in: false
}));

app.use('/', indexRouter);
app.use('/users', usersRouter);

module.exports = app;
