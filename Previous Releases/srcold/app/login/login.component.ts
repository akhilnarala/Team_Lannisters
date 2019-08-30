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
}
