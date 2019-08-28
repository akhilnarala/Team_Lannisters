import { Component, OnInit } from '@angular/core';
import { Queries } from 'Queries';
import { QueriesService } from '../queries.service';
@Component({
 selector: 'app-tq',
 templateUrl: './tq.component.html',
 styleUrls: ['./tq.component.css']
})
export class TqComponent implements OnInit {
 public questionList : Queries[];
 public var1;
 public x1:any;
 public y:string = "#";
 public y1:string = "";
 constructor(private  _queryService:QueriesService) { }
 ngOnInit() {
   this._queryService.getQuestionList().subscribe(data=>this.questionList=data);
   console.log(this.questionList);
 }
 myFunction() {
 }
 onClick2(x1){
   this.y="#demo"+x1;
   this.y1="demo"+x1;
   console.log(this.y);
   console.log(this.y1);
   console.log(x1);
   this.x1=x1;
 }
}