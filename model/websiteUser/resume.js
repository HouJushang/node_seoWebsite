const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const person = require('../websiteUser/person');
const peixun = require('../websiteUser/peixun');
const jiaoyu = require('../websiteUser/jiaoyu');
const gongzuo = require('../websiteUser/gongzuo');

const Resume = sequelize.define('resume', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    name: {type: Sequelize.STRING, allowNull: true},
    age: {type: Sequelize.STRING, allowNull: true},
    sex: {type: Sequelize.INTEGER, allowNull: true},
    shengao: {type: Sequelize.STRING, allowNull: true},
    jiehun: {type: Sequelize.INTEGER, allowNull: true},
    zhuanye: {type: Sequelize.STRING, allowNull: true},
    school: {type: Sequelize.STRING, allowNull: true},
    xueli: {type: Sequelize.STRING, allowNull: true},
    jiangyan: {type: Sequelize.STRING, allowNull: true},
    phone: {type: Sequelize.STRING, allowNull: true},
    email: {type: Sequelize.STRING, allowNull: true},
    zhuangtai: {type: Sequelize.STRING, allowNull: true},
    address: {type: Sequelize.STRING, allowNull: true},
    xinzi: {type: Sequelize.STRING, allowNull: true},
    didian: {type: Sequelize.STRING, allowNull: true},
    zhiwei: {type: Sequelize.STRING, allowNull: true},
    hangye: {type: Sequelize.STRING, allowNull: true},
    shijian: {type: Sequelize.STRING, allowNull: true},
    avatar: {type: Sequelize.STRING, allowNull: true},
    leixing: {type: Sequelize.STRING, allowNull: true},
    status: {type: Sequelize.INTEGER, allowNull: false},  // [待审核，审核通过，未通过]
    isShow: {type: Sequelize.INTEGER, allowNull: true, defaultValue: 0} //['不显示', '显示']
});
Resume.belongsTo(person);
Resume.hasMany(peixun, {as: 'peixun'});
Resume.hasMany(jiaoyu, {as: 'jiaoyu'});
Resume.hasMany(gongzuo, {as: 'gongzuo'});
module.exports = Resume;
