const categoryModel = _loadModel('content', 'category');
module.exports = function (id) {
    return categoryModel.findOne({where: {id: id}});
}