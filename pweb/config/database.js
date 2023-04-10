const Sequelize = require("sequelize");

const db = new Sequelize("tandatangan", "root", "", {
  host: "localhost",
  dialect: "mysql",
});

module.exports = db;