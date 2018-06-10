const jobMode = _loadModel('websiteUser', 'resume')
const gongzuoModel = _loadModel('websiteUser', 'gongzuo')
const jiaoyuModel = _loadModel('websiteUser', 'jiaoyu')
const peixunModel = _loadModel('websiteUser', 'peixun')
module.exports = function (id) {
    return jobMode.findOne({
        where: {
            id: id
        },
        include: [
            {model: gongzuoModel, as: 'gongzuo'},
            {model: jiaoyuModel, as: 'jiaoyu'},
            {model: peixunModel, as: 'peixun'},
        ]
    });
}