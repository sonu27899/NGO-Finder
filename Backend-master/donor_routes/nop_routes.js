var express = require('express');
 var router = express.Router();
 var Nop=require('../donor_models/nop_model');
 var nodemailer = require('nodemailer');

 router.get('/',function(req,res,next){
    Nop.getAllNop(function(err,rows){
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
router.get('/:ngo_email',function(req,res,next){
    Nop.ngoNopbyNgoId(req.params.ngo_email,function(err,rows){
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
