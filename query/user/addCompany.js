const companyModel = _loadModel('websiteUser', 'company')
module.exports = function (data) {
    return companyModel.create(data);
}