const express = require('express');
const expressApp = express();

expressApp.get('/', (req, res) => {
  res.send('Hello world!');
});

const port = process.env.PORT || 8080;
expressApp.listen(port, () => {
  console.log(`The 'Hello World' Node.js app is running at port ${port}.`);
});
