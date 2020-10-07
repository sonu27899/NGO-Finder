import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { ngo } from '../classes/ngo';
import { RegistrationService } from '../service/registeration.service';
import { LoginService } from '../service/login.service';
import { login } from '../classes/login';
 
@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
ngo_email:string;
ngo_password:string;
  constructor(private _route:Router,private _loginser:LoginService) { }

  onSubmit()
  {

    // console.log(this.ngo_email);
    // console.log(this.ngo_password);
    // this._ngo.getLogin(new ngo(this.ngo_email,this.ngo_password)).subscribe((data: any) => {
    //   console.log(data);
    //   if (data.length === 1) {
    //     alert('Login Succesfully...');
    //     this._route.navigate(["/forget"]);
    //   }
    //     else {
    //     console.log(this.ngo_email);
    //     console.log(this.ngo_password);
    //     alert("The Email_Id Or the Password is wrong");
    //   }
    // });
    console.log(this.ngo_email);
    console.log(this.ngo_password);
    //var fd=new FormData();
    //fd.append('ngo_email',this.ngo_email);
    //fd.append('ngo_password',this.ngo_password);
    //this._route.navigate(["/menu/tables"]);
 
     
    this._loginser.validlogin(new login(this.ngo_email,this.ngo_password)).subscribe(
      (data:any)=>
      {
        if(data.length==1)
        {
          alert("Login Successfull");
          localStorage.setItem('ngo_email',this.ngo_email);
          this._route.navigate(["/menu/tables"]);

        }
        else
        {
         

          alert("Incorrect Login Or Password");
        }
      });
  }

  addform(f){}
  ngOnInit(): void {
  }

}
