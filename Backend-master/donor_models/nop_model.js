var db=require('../dbconnection');
var Nop={
        
    getAllNop:function(callback){

        return db.query("Select * from nop_tbl ",callback)
     },
    
     ngoNopbyNgoId:function(ngo_email,callback){

        return db.query("Select * from ngo_nop_tbl where fk_ngo_email=? ",[ngo_email],callback)
     },

     ngoContactDetailByNgoId:function(ngo_email,callback){

      return db.query("Select * from ngo_contact_tbl where fk_ngo_email=? ",[ngo_email],callback)
   },
  

    
}
module.exports=Nop;
