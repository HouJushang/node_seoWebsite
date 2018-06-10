const sequelize = require('../bin/sequelize')

// userPermission
require('./userPermission/admin');
require('./userPermission/adminRole');
require('./userPermission/menu');
require('./userPermission/role');
require('./userPermission/roleMenu');

//
require('./content/category');
require('./content/position');
require('./content/positionContent');


require('./contentModel/news');
require('./contentModel/slide');
require('./contentModel/yuanqu');
require('./contentModel/video');
require('./contentModel/qiye');
require('./contentModel/expert');

//
require('./websiteUser/user');
require('./websiteUser/person');
require('./websiteUser/company');
require('./websiteUser/job');
require('./websiteUser/resume');
require('./websiteUser/jiaoyu');
require('./websiteUser/gongzuo');
require('./websiteUser/peixun');

module.exports = sequelize;
