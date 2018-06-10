/**
 * Created by hou on 2018/3/5.
 */
const config = require('./config/dataBase.js')
const Sequelize = require('sequelize');
const sequelize = new Sequelize(`mysql://${config.name}:${config.password}@${config.host}:${config.port}/${config.database}`);


sequelize.authenticate().then(() => {
    console.log('Sequelize connection has been established successfully.');
}).catch(err => {
    console.error('authenticateError:', err.name);
});

var log4js = require('log4js');
log4js.configure({
    appenders: { cheese: { type: 'file', filename: 'info.log' } },
    categories: { default: { appenders: ['cheese'], level: 'error' } }
});
var logger = log4js.getLogger();
logger.info("Some debug messages");