var db = require("../dbconnection");

var reorder = {
  getDonordetailByNgoEmail: function (pay_to_ngo_email,date1,place,time,nop_name,callback) {
      
    return db.query("select DISTINCT t.donate_from_donor_email,d.* from transaction_tbl t, ngo_details_tbl d where t.pay_to_ngo_email=? And t.pay_to_ngo_email=d.ngo_email"
    ,[pay_to_ngo_email] ,callback);
  },

  getitemforreorder: function (bid, callback) {
    return db.query(
      "select * from item join stock on (item.itemId=stock.fkItemId) join branch on (stock.fkBranchId=branch.branchId) join User on (User.fkBranchId=branch.branchId) join role on (role.roleId=User.fkRoleId) where stock.stockQuantity<=item.reorderLevel  and role.roleName='Admin' and branch.branchId=?  ",
      [bid],
      callback
    );
  },
};

module.exports = reorder;
