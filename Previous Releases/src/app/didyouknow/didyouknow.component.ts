import { Component, OnInit } from '@angular/core';
import { Update } from 'Update';

import { DidyouknowService } from '../didyouknow.service';
@Component({
  selector: 'app-didyouknow',
  templateUrl: './didyouknow.component.html',
  styleUrls: ['./didyouknow.component.css']
})
export class DidyouknowComponent implements OnInit {

  public updateList:Update[];
 constructor(private _updateService:DidyouknowService) { }

  ngOnInit() {
    this._updateService.getUpdateList().subscribe(data=>this.updateList=data);
  }

}
