const config = require('../config/dataBase.js')
const Sequelize = require('sequelize');
// const sequelize = new Sequelize(`mysql://${config.name}:${config.password}@${config.host}:${config.port}/${config.database}`);


const sequelize = new Sequelize(config.database, config.name, config.password, {
    host: config.host,
    port: config.port,
    dialect: 'mysql',
    operatorsAliases: false,
    // logging: console.log,
    pool: {
        max: 5,
        min: 0,
        acquire: 30000,
        idle: 10000
    },
    timezone: '+08:00'
});

sequelize.authenticate().then(() => {
    console.log('Sequelize connection has been established successfully.');
}).catch(err => {
    console.error('authenticateError:', err.name);
});
sequelize.sync();
module.exports = sequelize;
