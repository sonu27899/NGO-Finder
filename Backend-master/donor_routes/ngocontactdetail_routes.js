var express = require('express');
 var router = express.Router();
 var NgoContactDetail=require('../donor_models/nop_model');


router.get('/:ngo_email',function(req,res,next){
    NgoContactDetail.ngoContactDetailByNgoId(req.params.ngo_email,function(err,rows){
        if(err)
        {
            res.json(err);
        }
        else
        {
            res.json(rows);
        }
});
});

    
module.exports=router;
