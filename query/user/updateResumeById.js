const resumeMode = _loadModel('websiteUser', 'resume')
const gongzuoModel = _loadModel('websiteUser', 'gongzuo')
const jiaoyuModel = _loadModel('websiteUser', 'jiaoyu')
const peixunModel = _loadModel('websiteUser', 'peixun')
module.exports = async function (id, data) {
    const res1 =  gongzuoModel.destroy({where: {resumeId: id}})
    const res2 =  jiaoyuModel.destroy({where: {resumeId: id}})
    const res3 =  peixunModel.destroy({where: {resumeId: id}})
    data.gongzuo.map(e => {
        e.resumeId = id
    })
    data.jiaoyu.map(e => {
        e.resumeId = id
    })
    data.peixun.map(e => {
        e.resumeId = id
    })
    await res1
    await res2
    await res3
    const createResult1 =  gongzuoModel.bulkCreate(data.gongzuo)
    const createResult2 =  jiaoyuModel.bulkCreate(data.jiaoyu)
    const createResult3 =  peixunModel.bulkCreate(data.peixun)

    await createResult1;
    await createResult2;
    await createResult3;

    return resumeMode.update(data, { where: {id: id} })
}