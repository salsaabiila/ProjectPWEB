const Sequelize = require ("sequelize");
const db =  require("../config/database.js");
const { DataTypes } = Sequelize;

const users = db.define('users', {
    id:{
        type: DataTypes.STRING,
        autoIncrement: true,
        primaryKey: true,
        allowNull: false
    },
    username:{
        type: DataTypes.STRING,
        allowNull: false
    },
    email:{
        type: DataTypes.STRING,
        allowNull: false
    },
    password:{
        type: DataTypes.STRING,
        allowNull: false
    },
    active:{
        type: DataTypes.INTEGER,
        allowNull: false
    },
    sign_img:{
        type: DataTypes.STRING,
        allowNull: false
    },
    created_at:{
        type: DataTypes.DATE,
        allowNull: false
    },
    updated_at:{
        type: DataTypes.DATE,
        allowNull: false
    },

}, {
    createdAt: 'created_at',
    updatedAt: 'updated_at',
    freezeTableName: true,
});

module.exports = users;