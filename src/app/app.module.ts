import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NavbarComponent } from './navbar/navbar.component';
import { HttpClientModule } from '@angular/common/http';
import { PageNotFoundComponent } from './page-not-found/page-not-found.component';
import { ChatbotComponent } from './chatbot/chatbot.component';
import { FaqComponent } from './faq/faq.component';

import { LoginComponent } from './login/login.component';
import { ChallengesComponent } from './challenges/challenges.component';
import { TqComponent } from './tq/tq.component';
import { SliderComponent } from './slider/slider.component';
import { TechTalksComponent } from './tech-talks/tech-talks.component';
import { AnnouncementsComponent } from './announcements/announcements.component';
import { DidyouknowComponent } from './didyouknow/didyouknow.component';
import { HomeComponent } from './home/home.component';

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
    HttpClientModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
