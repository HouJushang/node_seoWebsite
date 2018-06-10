const jobModel = _loadModel('websiteUser', 'job')
module.exports = function (data) {
    return jobModel.create(data);
}