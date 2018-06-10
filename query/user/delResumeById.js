const resumeModel = _loadModel('websiteUser', 'resume')
module.exports = function (id) {
    return resumeModel.destroy({where: {id: id}})
}