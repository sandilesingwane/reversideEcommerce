import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';
import { Router } from '@angular/router';
import { error } from 'console';
import { RegisterService } from '../register.service';
import { User } from '../user';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  user = new User();
  msg ='';
  constructor( private _service: RegisterService ,private _router :Router) { }

  ngOnInit(): void {
  }

  loginUser()
  {
    this._service.loginUserFromRemote(this.user).subscribe(
      data=>{
        console.log("Response Recieved");
      this._router.navigate(['/productList'])
      },
      error=>{
        console.log("exception occurred");
        this.msg="wrong credentials, please enter correct details";
      }
      )
  }
   navigateToRegister()
   {
         this._router.navigate(['/register'])
   }
}
