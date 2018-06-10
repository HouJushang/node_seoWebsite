const serviceMode = _loadModel('websiteUser', 'service')
const companyMode = _loadModel('websiteUser', 'company')
module.exports = function (id) {
    return serviceMode.findOne({
        where: {
            id: id
        },
        include: [companyMode]
    });
}