var nodemailer = require('nodemailer');

var demo={

 sendMail:function(demo,callback){   
var transporter = nodemailer.createTransport({
  service: 'gmail',
  auth: {
    user: 'ngofinder27@gmail.com',
    pass: 'Ngo@1234'
  }
});

var mailOptions = {
    from: 'ngofinder27@gmail.com',
    to: demo.to,
    subject:demo.subject,
  //  text: demo.message
  html:'<p>Your Email Is :'+ '<b>'+ demo.to + '</b>' +'  And   ' + ' Your Password Is : ' + '<b> ' + demo.message + '</b>' 
};

transporter.sendMail(mailOptions, function(error, info){
  if (error) {
    console.log(error);
  } else {
    console.log('Email sent: ' + info.response);
  }
});

}
}
module.exports=demo;