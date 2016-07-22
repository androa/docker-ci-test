const app = require('./lib/app');
const PORT = process.env.PORT || 8080;

app.listen(PORT, function (err) {
  if (err) {
    return console.log(err);
  }

  console.log('%s listening at %s', app.name, app.url);
});
