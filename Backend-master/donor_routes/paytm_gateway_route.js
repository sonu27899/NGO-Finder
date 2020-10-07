var express=require('express');
var router = express.Router();
const checksum_lib = require('./Paytm/checksum');
const port = 3000;
var today=new Date();

router.get('/',(req,res)=>{
    console.log("Hello");
    
    let params ={}
        //rcxtHi64525030878865
        params['MID'] = 'QkeoPY87819740209709',
        params['WEBSITE'] = 'WEBSTAGING',
        params['CHANNEL_ID'] = 'WEB',
        params['INDUSTRY_TYPE_ID'] = 'Retail',
        params['ORDER_ID'] = 'ORD'+today.getDate()+today.getHours()+today.getMinutes()+today.getSeconds(),
        params['CUST_ID'] = 'CUST'+today.getDate()+today.getHours()+today.getMinutes()+today.getSeconds(),
        params['TXN_AMOUNT'] = '100.00',
        params['CALLBACK_URL'] = 'http://localhost:'+port+'/callback',
        params['EMAIL'] = 'shahsmit929@gmail.com',
        params['MOBILE_NO'] = '9724489177'
        //2#vv@AW_Lga8Q2q7
        checksum_lib.genchecksum(params,'9kkRe1UzMzgDYLpY',function(err,checksum){
            //console.log(checksum);
            //res.json();
             let txn_url = "https://securegw-stage.paytm.in/order/process"

            let form_fields = ""
            for(x in params)
            {
                form_fields += "<input type='hidden' name='"+x+"' value='"+params[x]+"'/>"

            }

            form_fields+="<input type='hidden' name='CHECKSUMHASH' value='"+checksum+"' />"

            var html = '<html><body><center><h1>Please wait! Do not refresh the page</h1></center><form method="post" action="'+txn_url+'" name="f1">'+form_fields +'</form><script type="text/javascript">document.f1.submit()</script></body></html>'
            res.writeHead(200,{'Content-Type' : 'text/html'});
            res.write(html)
            res.end()
        })
})
module.exports=router;



