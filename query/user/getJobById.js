const jobMode = _loadModel('websiteUser', 'job')
const companyModel = _loadModel('websiteUser', 'company')
module.exports = function (id) {
    return jobMode.findOne({
        where: {
            id: id
        },
        include: [{
            model: companyModel
        }]
    });
}