import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})
export class GenericHttpService {

  base: string = environment.baseUrl;

  constructor(private http: HttpClient) { }

  post(endpoint: string, model: any) {
    return this.http.post(`${this.base}/${endpoint}`, model);
  }

  get(endpoint: string) {
    return this.http.get(`${this.base}/${endpoint}`);
  }

  put(endpoint: string, model: any) {
    return this.http.put(`${this.base}/${endpoint}`, model);
  }
}
