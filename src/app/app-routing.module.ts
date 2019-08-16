import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { NavbarComponent } from './navbar/navbar.component';
import { FaqComponent } from './faq/faq.component';
import { ChatbotComponent } from './chatbot/chatbot.component';
import { NewsComponent } from './news/news.component';
import { PageNotFoundComponent } from './page-not-found/page-not-found.component';
import { LoginComponent } from './login/login.component';



const routes: Routes = [
  {path:'',component:NavbarComponent},
   {path:'faq',component:FaqComponent},
   {path:'login',component:LoginComponent},
  {path:'chatbot',component:ChatbotComponent},
   //{path:'/challenges',component:ChallengeComponent},
  {path:'news',component:NewsComponent},
   {path:'**',component:PageNotFoundComponent},

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
