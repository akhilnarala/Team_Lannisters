import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Update } from 'Update';
@Injectable({
 providedIn: 'root'
})
export class UpdateService {
 private _url="../assets/data/update.json"
 constructor(private _http:HttpClient) { }
 getUpdateList():Observable <Update[]>{
   return this._http.get<Update[]>(this._url);
 }
}