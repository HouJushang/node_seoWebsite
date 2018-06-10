const jobMode = _loadModel('websiteUser', 'job')
module.exports = function (id, data) {
    return jobMode.update(data, {where: {id: id}})
}