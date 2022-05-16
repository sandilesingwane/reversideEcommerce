import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';
import { User } from './user';


@Injectable({
  providedIn: 'root'
})
export class RegisterService {
  registerUserFromRemote(user: User) {
    throw new Error('Method not implemented.');
  }

  constructor(private _http :HttpClient) { }

   public loginUserFromRemote(user :User):Observable<any>
   {
   return this._http.post<any>("http://localhost:8080/login",user)
   }
    public registerUserFromRemote(user :User):Observable<any>{
     return this._http.post<any>("http://localhost:8080/register",user);
   }
   handleError(error: Response){

   }
}
