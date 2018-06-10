const serviceMode = _loadModel('websiteUser', 'service')
module.exports = function (id) {
    return serviceMode.findOne({
        where: {
            id: id
        },
    });
}