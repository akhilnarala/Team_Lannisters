import { Component, OnInit } from '@angular/core';
import { ChatbotService } from '../chatbot.service';
import { Message } from '../Message';

@Component({
  selector: 'app-chatbot',
  templateUrl: './chatbot.component.html',
  styleUrls: ['./chatbot.component.css']
})
export class ChatbotComponent implements OnInit {

  public messages:Message[];
  public formValue:String="testing";

  constructor(private _chatBotService:ChatbotService) { }

  ngOnInit() {

    this._chatBotService.getDeptList().subscribe(data=>this.messages=data);

  }
  sendMessage() {

    let chatMessage:Message = new Message("1",this.formValue);
    this.messages.concat(chatMessage);
    console.log(this.messages);
   
  }

}
