import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NavbarComponent } from './navbar/navbar.component';

import { PageNotFoundComponent } from './page-not-found/page-not-found.component';
import { ChatbotComponent } from './chatbot/chatbot.component';
import { FaqComponent } from './faq/faq.component';
import { NewsComponent } from './news/news.component';
import { LoginComponent } from './login/login.component';

@NgModule({
  declarations: [
    AppComponent,
    NavbarComponent,

    PageNotFoundComponent,

    ChatbotComponent,

    FaqComponent,

    NewsComponent,

    LoginComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
