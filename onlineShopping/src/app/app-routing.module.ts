import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { LoginComponent } from './login/login.component';
import { ProductListComponent } from './product-list/product-list.component';
import { RegisterComponent } from './register/register.component';

const routes: Routes = [
  {path:'',component:LoginComponent},
  {path:'/productList',component:ProductListComponent},
  {path:'/register',component:RegisterComponent},
  {path:'/login',component:LoginComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
