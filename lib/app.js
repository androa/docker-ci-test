const restify = require('restify');
const app = restify.createServer();

app.get('/test-pass/', function foo(req, res, next) {
  res.send('this is passing');
  return next();
});

module.exports = app;
