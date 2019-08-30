import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { StorageServiceModule} from 'angular-webstorage-service';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NavbarComponent } from './navbar/navbar.component';
import { FormsModule } from '@angular/forms'
import { PageNotFoundComponent } from './page-not-found/page-not-found.component';
import { ChatbotComponent } from './chatbot/chatbot.component';
import { FaqComponent } from './faq/faq.component';
import { LoginComponent } from './login/login.component';
import { HttpClientModule } from '@angular/common/http';
import { LoginService } from './login.service';
import { RegisterService } from './register.service';
import { HomeComponent } from './home/home.component';
import { ChallengesComponent } from './challenges/challenges.component';
import { TqComponent } from './tq/tq.component';
import { SliderComponent } from './slider/slider.component';
import { TechTalksComponent } from './tech-talks/tech-talks.component';
import { AnnouncementsComponent } from './announcements/announcements.component';
import { DidyouknowComponent } from './didyouknow/didyouknow.component';

@NgModule({
  declarations: [
    AppComponent,
    NavbarComponent,
    PageNotFoundComponent,
    HomeComponent,
    ChatbotComponent,
    FaqComponent,
    LoginComponent,
    ChallengesComponent,
    TqComponent,
    SliderComponent,
    TechTalksComponent,
    AnnouncementsComponent,
    DidyouknowComponent
  ],
  imports: [
    BrowserModule,
    FormsModule,
    AppRoutingModule,
    HttpClientModule,
    StorageServiceModule
  ],
  providers: [LoginService,RegisterService],
  bootstrap: [AppComponent]
})
export class AppModule { }
