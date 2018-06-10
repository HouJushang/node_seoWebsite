const personMode = _loadModel('websiteUser', 'person')
const userModel = _loadModel('websiteUser', 'user')

module.exports = function (id) {
    return personMode.findOne({
        where: {
            userId: id
        },
        include: [{
            model: userModel
        }]
    });
}