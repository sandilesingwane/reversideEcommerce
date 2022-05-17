import { Injectable } from '@angular/core';
import { GenericHttpService } from '../_shared/generic-http.service';

@Injectable({
  providedIn: 'root'
})
export class AccountService {

  constructor(private http: GenericHttpService) { }

  login(loginModel: any) {
    return this.http.post(`user/login`, loginModel);
  }
  register(registerModel:any){
    return this.http.post('user/register',registerModel);
  }
}
