const Sequelize = require('sequelize');
const sequelize = _loadSequelize();
const User = require('../websiteUser/user');
const company = sequelize.define('company', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    logo: { type: Sequelize.STRING, allowNull: true },
    companyName: { type: Sequelize.STRING, allowNull: true },
    zzjgdm: { type: Sequelize.STRING, allowNull: true },
    qyzclx: { type: Sequelize.STRING, allowNull: true },
    xzdm: { type: Sequelize.STRING, allowNull: true },
    dwxz: { type: Sequelize.STRING, allowNull: true },
    kysj: { type: Sequelize.STRING, allowNull: true },
    kgqk: { type: Sequelize.STRING, allowNull: true },
    fddbr: { type: Sequelize.STRING, allowNull: true },
    hedm: { type: Sequelize.STRING, allowNull: true },
    yzbm: { type: Sequelize.STRING, allowNull: true },
    gswz: { type: Sequelize.STRING, allowNull: true },
    txdz: { type: Sequelize.STRING, allowNull: true },
    zycp: { type: Sequelize.STRING, allowNull: true },
    qyjj: { type: Sequelize.STRING, allowNull: true },
    lxrname: { type: Sequelize.STRING, allowNull: true },
    lxrphone: { type: Sequelize.STRING, allowNull: true },
    chuanzhen: { type: Sequelize.STRING, allowNull: true },
    lxremail: { type: Sequelize.STRING, allowNull: true },
});
company.belongsTo(User);
module.exports = company;
