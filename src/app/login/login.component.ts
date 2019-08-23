import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  public id01;
  public id02;
  public val="password";
  public val2="fa fa-eye icon";
  constructor(private router: Router) { }

  ngOnInit() {
    // document.getElementById('id01').style.display='block';
    this.id01='block';
  }
onClickGone(){
  this.id01='none';
  this.id02='none';
  this.router.navigate(['/home']);
}
onRegister(){
  this.id01='none';
  this.id02='block';
}
viewPassword()
{
  

  if (this.val == 'password')
  {
    this.val='text';
    this.val2='fa fa-eye-slash icon';
  }
  else
  {
    this.val='password';
    this.val2='fa fa-eye icon';
  }
}
}
