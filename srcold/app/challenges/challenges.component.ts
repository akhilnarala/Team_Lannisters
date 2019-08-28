import { Component, OnInit } from '@angular/core';
import { Challenge1 } from '../Challenge1';
import { ChallengeService } from '../challenge.service';
import { Router } from '@angular/router';
​
@Component({
  selector: 'app-challenges',
  templateUrl: './challenges.component.html',
  styleUrls: ['./challenges.component.css']
})
export class ChallengesComponent implements OnInit {
//public selectedChallenge:Challenge1 = new Challenge1(567,"hackathon","hack for life",8);
public ChallengeList:Challenge1[];
​
  constructor(private _challengeService:ChallengeService,private router:Router) { }
​
  ngOnInit() {
    this._challengeService.getChallengeDetails().subscribe(data => this.ChallengeList= data);
  }
fetchDetails(ChallengeSelectedFromList:Challenge1){
  console.log(ChallengeSelectedFromList);
  this.router.navigate(['challenges',ChallengeSelectedFromList.user_id]);
}
}
