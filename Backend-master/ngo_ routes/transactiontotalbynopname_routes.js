var express = require('express');
 var router = express.Router();
 var transactiontotal=require('../ngo_ models/transaction_model');


 
router.get('/:ngo_email',function(req,res,next){
    transactiontotal.getAllTransactionTotalByNopName(req.params.ngo_email,function(err,rows){
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
