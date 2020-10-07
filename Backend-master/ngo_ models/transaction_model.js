var db=require('../dbconnection');
var Transaction={
        
     
     getAllTransactionByNopName:function(nop_name,ngo_email,callback){
        //console.log(ngo_email+nop_name);
       
        return db.query(" select d.*,t.* from transaction_tbl t,donor_tbl d where t.fk_nop_name=? And t.pay_to_ngo_email=? And t.donate_from_donor_email=d.donor_email "
        ,[nop_name,ngo_email],callback)
     },
     getAllTransactionByAllNopName:function(ngo_email,callback){
      //console.log(ngo_email+nop_name);
        return db.query(" select d.*,t.* from transaction_tbl t,donor_tbl d where t.pay_to_ngo_email=? And t.donate_from_donor_email=d.donor_email "
        ,[ngo_email] ,callback)
   },
     getAllTransactionTotalByNopName:function(ngo_email,callback){
      //console.log(ngo_email+nop_name);
      return db.query("SELECT fk_nop_name As nop_name,SUM(transaction_amt) As Total_Amt FROM `transaction_tbl` where pay_to_ngo_email=? group by fk_nop_name  ",[ngo_email],callback)
   },
     

    
}
module.exports=Transaction;
