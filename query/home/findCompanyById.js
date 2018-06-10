const userMode = _loadModel('websiteUser', 'user')
const companyMode = _loadModel('websiteUser', 'company')
module.exports = function (id) {
    return companyMode.findOne({
        where: {
            id: id
        },
        include: [userMode]
    });
}