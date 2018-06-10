function doData(code, message, data){
    return {
        code, message, data
    }
};
module.exports = function(ctx, next){
    ctx.success = function(message, data){
        return doData('success', message, data);
    }
    ctx.error = function(message, data){
        return doData('error', message, data);
    }
    next();
}