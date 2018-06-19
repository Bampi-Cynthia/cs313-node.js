const http = require('http');

let server = http.createServer(function (req, res) {
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.write('Hello World!');
  res.end();
});

// process.env.PORT is important! Heroku won't work without it!
server.listen(process.env.PORT || 3000, function() {
  console.log('Now listening!');
});