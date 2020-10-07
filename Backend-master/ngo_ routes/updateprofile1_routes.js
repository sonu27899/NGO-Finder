var register=require('../ngo_ models/registration_model');
var express=require('express');
var router=express.Router();

var multer=require('multer');
var path=require('path');
var storage = multer.diskStorage({
    destination: (req, file, cb) => {
      cb(null, 'public/logo_images')
    },
    filename: (req, file, cb) => {
      x = file.fieldname + '-' + Date.now() + path.extname(file.originalname);
      cb(null, file.fieldname + '-' + Date.now() + path.extname(file.originalname))
    }
  });
  var upload = multer({ storage: storage });

router.put('/',upload.single('ngo_logo'),function(req,res,next){
  
    register.updateprofile1(req.body,req.file.filename,function(err,rows){
      console.log(rows);  
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