module.exports = function (model, id) {
    const contentMode = _loadModel('contentModel', model)
    return contentMode.findOne({
        where: {
            id: id
        },
    });
}