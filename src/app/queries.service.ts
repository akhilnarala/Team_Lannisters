import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Queries } from 'Queries';
@Injectable({
 providedIn: 'root'
})
export class QueriesService {
 private _url="../assets/data/queries.json"
 constructor(private _http:HttpClient) { }
 getQuestionList():Observable <Queries[]>{
   return this._http.get<Queries[]>(this._url);
 }
}