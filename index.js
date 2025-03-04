// Import express module
const express = require('express');

// Create an instance of express
const app = express();

// Define the port for the app
const port = 3000;

// Define a route to serve a message when you access the root URL
app.get('/', (req, res) => {
  res.send('Hello, Dockerized Node.js App!');
});

// Start the server
app.listen(port, () => {
  console.log(`App running on http://localhost:${port}`);
});
