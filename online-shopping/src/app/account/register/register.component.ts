import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormControl, FormGroup, MaxLengthValidator, Validators } from '@angular/forms';
import { AccountService } from '..';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.css']
})
export class RegisterComponent implements OnInit {
  form: FormGroup = new FormGroup({});

  constructor(
    private formBuilder: FormBuilder,
    private accountSevice: AccountService
  ) {}
  get email() {
    return this.form.get('email') as FormControl;
  }

  get password() {
    return this.form.get('password') as FormControl;
  }
  get firstName(){
    return this.form.get('firstName') as FormControl;
  }

  get lastName(){
    return this.form.get('lastName') as FormControl;
  }

  get username(){
    return this.form.get('userame') as FormControl;
  }
  get phoneNumber(){
    return this.form.get('phoneNumber') as FormControl;
  }
  get address(){
    return this.form.get('address') as FormControl;
  }



  ngOnInit(): void {

    this.form = this.formBuilder.group({

     firstName:['',[Validators.required,Validators.maxLength(30)]],
     lastName:['',[Validators.required,Validators.maxLength(30)]],
     address:['',[Validators.required,Validators.maxLength(150)]],
     phoneNumber:['',Validators.required],
     username:['', Validators.required],
     email: ['', [ Validators.required, Validators.email ]],
      password: ['', [
        Validators.required,
        Validators.minLength(8),
        Validators.pattern('^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$')
      ]]
    })
  }
  registerUser() {
    this.form.markAllAsTouched();
    console.log(this.form);
    this.accountSevice.login(this.form.value).subscribe((response: any) => {
      console.log(response);
    })
  }
}
