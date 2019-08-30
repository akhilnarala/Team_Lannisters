import { Injectable } from '@angular/core';
​
import { Observable, of } from 'rxjs';
import { Challenge1 } from './Challenge1';
import {HttpClient} from '@angular/common/http'
​
@Injectable({
  providedIn: 'root'
})
export class ChallengeService {
​
  private _url= "http://localhost:8080/challenge/list";   //"src/app/ChallengesList.json";
​
  constructor( private _http: HttpClient)
   {
​
    }
​
  getChallengeDetails():Observable<Challenge1[]>{
     return this._http.get<Challenge1[]>(this._url);
    // return of(CHALLENGELIST);
}
}
​
​
​