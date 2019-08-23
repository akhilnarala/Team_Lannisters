import { Component, OnInit } from '@angular/core';
import { Update } from 'Update';
import { UpdateService } from '../update.service';
@Component({
 selector: 'app-announcements',
 templateUrl: './announcements.component.html',
 styleUrls: ['./announcements.component.css']
})
export class AnnouncementsComponent implements OnInit {
 public updateList:Update[];
 constructor(private _updateService:UpdateService) { }
 ngOnInit() {
   this._updateService.getUpdateList().subscribe(data=>this.updateList=data);
 }
}