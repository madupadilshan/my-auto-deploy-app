const express = require('express');
const app = express();
const PORT = 3000;

app.get('/', (req, res) => {
  res.send('<h1>Congratulations!  its work full CI/CD pipeline </h1>');
});

app.listen(PORT, () => {
  console.log(`App listening on port ${PORT}`);
});