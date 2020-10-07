import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { RegistrationService } from '../service/registeration.service';

@Component({
  selector: 'app-viewprofile',
  templateUrl: './viewprofile.component.html',
  styleUrls: ['./viewprofile.component.css']
})
export class ViewprofileComponent implements OnInit {
  isLinear = false;
ngo_email:string;
viewprofile_arr:any[]=[];
ngo_name:string;
ngo_password:string;
ngo_registration_no:string;
ngo_logo:string;
ngo_contact:string;
paytm_merchant_id:string;
ngo_address:string;
ngo_landmark:string;
ngo_city:string;
ngo_state:string;
ngo_pincode:string;
ngo_nop_name:string;

contact_for_donor:string;
ngo_website:string;
ngo_facebook:string;
ngo_twitter:string;
ngo_instagram:string;

fk_nop_name:string;
selectedfile:File=null;
files:File=null;

proof_image:File[]=[];
nop_description:string[]=[];
//part2:register2[]=null;
arr:string[]=[];
i:number=0;
nop_arr:any=null;
flag:number=0;
fk_ngo_nop_name:string="";
nop_name:string;
//form: FormGroup;

  constructor(private _registrationservice:RegistrationService,private _route:Router) { }

  ngOnInit(): void {
    this._registrationservice.getallnop().subscribe(
      (data:any)=>{
    
        this.nop_arr=data;
    
    
      }
      );
    
  this.ngo_email=localStorage.getItem('ngo_email');
  this._registrationservice.viewprofileByNgoId(this.ngo_email).subscribe(
    (data:any)=>{

      this.viewprofile_arr=data;
      console.log(this.viewprofile_arr);
      this.ngo_name=data[0].ngo_name;
      this.ngo_logo=data[0].ngo_logo;
      this.ngo_registration_no=data[0].ngo_registration_no;
      this.ngo_password=data[0].ngo_password;
      this.ngo_email=data[0].ngo_email;
      this.ngo_contact=data[0].ngo_contact;
      this.paytm_merchant_id=data[0].paytm_merchant_id;
      this.ngo_address=data[0].ngo_address;
      this.ngo_landmark=data[0].ngo_landmark;
      this.ngo_city=data[0].ngo_city;
      this.ngo_state=data[0].ngo_state;
      this.ngo_pincode=data[0].ngo_pincode;
      this.ngo_nop_name=data[0].ngo_nop_name;
      this.proof_image=data[0].proof_image;
      this.nop_description=data[0].nop_description;
      this.contact_for_donor=data[0].contact_for_donor;
      this.ngo_website=data[0].ngo_website;
      this.ngo_facebook=data[0].ngo_facebook;
      this.ngo_instagram=data[0].ngo_instagram;
      this.ngo_twitter=data[0].ngo_twitter;
      this.fk_ngo_nop_name=data[0].fk_ngo_nop_name;
      this.fk_nop_name=data[0].fk_nop_name;
    }
    ); 
 }
 onSubmit1(){}
 onSubmit2(){
  
 }
 onSubmit3(){}
 
 //nopmanage($event){}
 nopmanage(item)
  {
    // if(item.target.checked)
    // {
    //   let temp:string;
    //   temp=item.target.value.toString();
    //   this.arr.push(temp);
    //   this.fk_ngo_nop_name=this.arr.toString();

    // }
    // else
    // {
    //   let temp:string;
    //   temp=item.target.value.toString();
    //   let index:number=this.arr.indexOf(temp);
    //   this.arr.splice(index,1);
    //   this.nop_description.slice(index,1);
    //   this.fk_ngo_nop_name=this.arr.toString();
    // }

  }

 addform(f){}

onselect($event){}
Editdescription($event,i){}
onproof($event){}
}


