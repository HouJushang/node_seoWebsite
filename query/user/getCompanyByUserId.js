const contentMode = _loadModel('websiteUser', 'company')
const userModel = _loadModel('websiteUser', 'user')
module.exports = function (id) {
    return contentMode.findOne({
        where: {
            userId: id
        },
        include: [{
            model: userModel
        }]
    });
}