import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Message } from './Message';


@Injectable({
  providedIn: 'root'
})
export class ChatbotService {
  private _url="../assets/messages.json"
  constructor(private _http:HttpClient) { }

 

  getDeptList():Observable<Message[]>
   {
     return this._http.get<Message[]>(this._url);
   }
}
