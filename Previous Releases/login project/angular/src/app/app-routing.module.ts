import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { FaqComponent } from './faq/faq.component';
import { ChatbotComponent } from './chatbot/chatbot.component';
import { PageNotFoundComponent } from './page-not-found/page-not-found.component';
import { LoginComponent } from './login/login.component';
import { HomeComponent } from './home/home.component';
import { ChallengesComponent } from './challenges/challenges.component';



const routes: Routes = [
  {path:'',component:HomeComponent},
   {path:'faq',component:FaqComponent},
   {path:'login',component:LoginComponent},
  {path:'chatbot',component:ChatbotComponent},
   {path:'challenges',component:ChallengesComponent},
  {path:'home',component:HomeComponent},
   {path:'**',component:PageNotFoundComponent},

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
