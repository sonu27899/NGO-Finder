var reorder = require("../ngo_ models/event_model");
var express = require("express");
var router = express.Router();
var nodemailer = require("nodemailer");

router.get("/:ngo_email/:date1/:place/:time/:nop_name", function (req, res, next) {
  reorder.getDonordetailByNgoEmail(req.params.ngo_email,req.params.date1,req.params.place,req.params.time,req.params.nop_name,function (err, rows) {

    //console.log(req.body);
    //console.log(rows);
    for (i = 0; i < rows.length; i++) {
      console.log(rows.length);
        console.log(req.params.ngo_email + req.params.date1 + req.params.place + req.params.time + req.params.nop_name)
         
          let donor_email = "";
          let ngo_name="",ngo_email="",ngo_contact="";
            ngo_email = rows[0].ngo_email;
            ngo_name = rows[0].ngo_name;            
            ngo_contact = rows[0].ngo_contact;
            donor_email = rows[i].donate_from_donor_email;
            //console.log(rows[i]);
            //branchName = result[i].branchName;
        //console.log(donor_email);
      //console.log(rows);
    //console.log(req.params.ngo_email)
   //console.log()
         

          if (rows.length != 0) {
            var transporter = nodemailer.createTransport({
              service: "gmail",

              auth: {
                user: "ngofinder27@gmail.com",
                pass: "Ngo@1234",
              },
              tls: {
                rejectUnauthorized: false,
              },
            });

            var mailOptions = {
              from: "ngofinder27@gmail.com",

              to: donor_email,

              subject:
                "Invitation for Coming For Event" ,

              //text:rows[i].itemId,
              html:
                "<h2>" + ngo_name + "</h2> <br>" +
                " <p>The Event will be held on " + "<b>" + req.params.date1 + "</b>" + " on " + "<b>" + req.params.time + "</b>" + " for " + "<b>" + req.params.nop_name  + "</b>" + " on " + "<b>" + req.params.place + "</b>" +"." 
                + "Please may i invite to come on Event." + "If you have any query please contact us on the no :" + "<b>" + ngo_contact + 
                  "</b>" + "or " + "<b>" + ngo_email + "</b>" + ". " + "</p> <br>"
                 
               
            };

            transporter.sendMail(mailOptions, function (error, info) {
              if (error) {
                console.log(error);
              } else {
                console.log("Email sent: " + info.response);
              }
            });
          }
        }
        });
      });
   
  


module.exports = router;
