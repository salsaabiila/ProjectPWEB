// const http = require('http');

// const hostname = 'localhost';
// const port = 3000;

// const server = http.createServer((req, res) => {
//   res.statusCode = 200;
//   res.setHeader('Content-Type', 'text/plain');
//   res.end('Hello, World!\n');
// // return res.end();
// });

// server.listen(port, hostname, () => {
//   console.log(`Server berjalan di http://${hostname}:${port}/`);
// });

const express = require("express");
const cors = require("cors");
const db = require("./config/database");
const Router = require("./routes/routes");

const app = express();
app.use(express.json());
app.use(cors());
app.use(Router);

async function main() {
  try {
    await db.authenticate();
    console.log("Connection has been established successfully.");
  } catch (error) {
    console.error("Unable to connect to the database:", error);
  }
};

const port = 3000;

app.listen(port, () =>
  console.log(`Port Server: ${port}`)
);