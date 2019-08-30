import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.css']
})
export class NavbarComponent implements OnInit {

public var1="topnav";
  constructor() { }

  ngOnInit() {
  }
  myFunction()
  {
    if(this.var1=="topnav")
    {
      this.var1+=" responsive";
    }
    else{
      this.var1="topnav";
    }
  }

}
