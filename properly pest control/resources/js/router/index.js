import { RouterLink, createRouter,createWebHistory } from "vue-router";
import Dashboard from '../components/admin/Dashboard.vue'
import Login from '../components/admin/Login.vue'
import Home from '../components/frontend/Home.vue'
import About from '../components/frontend/About.vue'
import Pricing from '../components/frontend/Pricing.vue'
import Service from '../components/frontend/Service.vue'
import Cockroach_control from '../components/frontend/Cockroach_control.vue'
import Bedbug_control from '../components/frontend/Bedbug_control.vue'
import Termites_control from '../components/frontend/Termites_control.vue'
import Rodents_control from '../components/frontend/Rodents_control.vue'
import Fly_control from '../components/frontend/Fly_control.vue'
import Bee_control from '../components/frontend/Bee_control.vue'
import Mosquito_control from '../components/frontend/Mosquito_control.vue'
import Commercial_Pest_Control from '../components/frontend/Commercial_Pest_Control.vue'
import Residential_Pest_Control from '../components/frontend/Residential_Pest_Control.vue'
import Industrial_Pest_Control from '../components/frontend/Industrial_Pest_Control.vue'
import Project from '../components/frontend/Project.vue'
import Blog from '../components/frontend/Blog.vue'
import Contact from '../components/frontend/Contact.vue'
import Review from '../components/frontend/Review.vue'
import Clients from '../components/frontend/Clients.vue'

//dashboard vue
import D_About from '../components/dashboard/D_About.vue'
import Edit_About from '../components/dashboard/Edit_About.vue'
import About_list from '../components/dashboard/About_list.vue'
import Contact_list from '../components/dashboard/Contact_list.vue'
import Appointment_list from '../components/dashboard/Appointment_list.vue'
import Blog_list from '../components/dashboard/Blog_list.vue'
import Pest_list from '../components/dashboard/Pest_list.vue'
import Service_list from '../components/dashboard/Service_list.vue'
import Project_list from '../components/dashboard/Project_list.vue'
import Team_list from '../components/dashboard/Team_list.vue'
import Client_list from '../components/dashboard/Client_list.vue'
import Testimonial_list from '../components/dashboard/Testimonial_list.vue'
import General_list from '../components/dashboard/General_list.vue'
import Banner_list from '../components/dashboard/Banner_list.vue'
import Social_list from '../components/dashboard/Social_list.vue'
import D_Blog from '../components/dashboard/D_Blog.vue'
import D_Pest from '../components/dashboard/D_Pest.vue'
import D_Service from '../components/dashboard/D_Service.vue'
import D_Project from '../components/dashboard/D_Project.vue'
import D_Team from '../components/dashboard/D_Team.vue'
import D_Client from '../components/dashboard/D_Client.vue'
import D_Testimonial from '../components/dashboard/D_Testimonial.vue'
import D_General from '../components/dashboard/D_General.vue'
import D_Banner from '../components/dashboard/D_Banner.vue'
import D_Social from '../components/dashboard/D_Social.vue'
import Edit_Blog from '../components/dashboard/Edit_Blog.vue'
import Edit_Pest from '../components/dashboard/Edit_Pest.vue'
import Edit_Service from '../components/dashboard/Edit_Service.vue'
import Edit_Project from '../components/dashboard/Edit_Project.vue'
import Edit_Team from '../components/dashboard/Edit_Team.vue'
import Edit_Client from '../components/dashboard/Edit_Client.vue'
import Edit_Testimonial from '../components/dashboard/Edit_Testimonial.vue'
import Edit_General from '../components/dashboard/Edit_General.vue'
import Edit_Banner from '../components/dashboard/Edit_Banner.vue'
import Edit_Social from '../components/dashboard/Edit_Social.vue'

import store from "../store";
const routes=[
    {
        name:'home',
        path:'/',
        component:Home,
        meta:{
            middleware:'guest'
        }

    },

    {
        name:'about',
        path:'/about',
        component:About,
        meta:{
            middleware:'guest'
        }

    },
    {
        name:'pricing',
        path:'/pricing',
        component:Pricing,
        meta:{
            middleware:'guest'
        }

    },
    {
        name:'service',
        path:'/service',
        component:Service,
        meta:{
            middleware:'guest'
        }

    },
    {
        name:'cockroach_control',
        path:'/cockroach_control',
        component:Cockroach_control,
        meta:{
            middleware:'guest'
        }

    },
    {
        name:'bedbug_control',
        path:'/bedbug_control',
        component:Bedbug_control,
        meta:{
            middleware:'guest'
        }

    },
    {
        name:'termites_control',
        path:'/termites_control',
        component:Termites_control,
        meta:{
            middleware:'guest'
        }

    },
    {
        name:'rodents_control',
        path:'/rodents_control',
        component:Rodents_control,
        meta:{
            middleware:'guest'
        }

    },
    {
        name:'fly_control',
        path:'/fly_control',
        component:Fly_control,
        meta:{
            middleware:'guest'
        }

    },
    {
        name:'bee_control',
        path:'/bee_control',
        component:Bee_control,
        meta:{
            middleware:'guest'
        }

    },
    {
        name:'mosquito_control',
        path:'/mosquito_control',
        component:Mosquito_control,
        meta:{
            middleware:'guest'
        }

    },
    {
        name:'commercial_pest_control',
        path:'/commercial_pest_control',
        component:Commercial_Pest_Control,
        meta:{
            middleware:'guest'
        }

    },
    {
        name:'residential_pest_control',
        path:'/residential_pest_control',
        component:Residential_Pest_Control,
        meta:{
            middleware:'guest'
        }

    },
    {
        name:'industrial_pest_control',
        path:'/industrial_pest_control',
        component:Industrial_Pest_Control,
        meta:{
            middleware:'guest'
        }

    },
    {
        name:'project',
        path:'/project',
        component:Project,
        meta:{
            middleware:'guest'
        }

    },
    {
        name:'review',
        path:'/review',
        component:Review,
        meta:{
            middleware:'guest'
        }

    },
    {
        name:'clients',
        path:'/clients',
        component:Clients,
        meta:{
            middleware:'guest'
        }

    },
    {
        name:'blog',
        path:'/blog',
        component:Blog,
        meta:{
            middleware:'guest'
        }

    },
    {
        name:'contact',
        path:'/contact',
        component:Contact,
        meta:{
            middleware:'guest'
        }

    },


        //dashboard
    {
        name:'banner_list',
        path:'/banner_list',
        component:Banner_list,
        meta:{
            middleware:'auth'
        }
        

    },
    {
        name:'d_banner',
        path:'/d_banner',
        component:D_Banner,
        meta:{
            middleware:'auth'
        }

    },
    {
        name:'edit_banner',
        path:'/edit_banner/:id',
        component:Edit_Banner,
        meta:{
            middleware:'auth'
        }

    },
    {
        name:'about_list',
        path:'/about_list',
        component:About_list,
        meta:{
            middleware:'auth'
        }

    },
    {
        name:'d_about',
        path:'/d_about',
        component:D_About,
        meta:{
            middleware:'auth'
        }

    },
    {
        name:'edit_about',
        path:'/edit_about/:id',
        component:Edit_About,
        meta:{
            middleware:'auth'
        }

    },
    {
        name:'blog_list',
        path:'/blog_list',
        component:Blog_list,
        meta:{
            middleware:'auth'
        }

    },
    {
        name:'d_blog',
        path:'/d_blog',
        component:D_Blog,
        meta:{
            middleware:'auth'
        }

    },
    {
        name:'edit_blog',
        path:'/edit_blog/:id',
        component:Edit_Blog,
        meta:{
            middleware:'auth'
        }

    },
    {
        name:'pest_list',
        path:'/pest_list',
        component:Pest_list,
        meta:{
            middleware:'auth'
        }

    },
    {
        name:'d_pest',
        path:'/d_pest',
        component:D_Pest,
        meta:{
            middleware:'auth'
        }

    },
    {
        name:'edit_pest',
        path:'/edit_pest/:id',
        component:Edit_Pest,
        meta:{
            middleware:'auth'
        }

    },
    {
        name:'service_list',
        path:'/service_list',
        component:Service_list,
        meta:{
            middleware:'auth'
        }

    },
    {
        name:'d_service',
        path:'/d_service',
        component:D_Service,
        meta:{
            middleware:'auth'
        }

    },
    {
        name:'edit_service',
        path:'/edit_service/:id',
        component:Edit_Service,
        meta:{
            middleware:'auth'
        }

    },
    {
        name:'project_list',
        path:'/project_list',
        component:Project_list,
        meta:{
            middleware:'auth'
        }

    },
    {
        name:'d_project',
        path:'/d_project',
        component:D_Project,
        meta:{
            middleware:'auth'
        }

    },
    {
        name:'edit_project',
        path:'/edit_project/:id',
        component:Edit_Project,
        meta:{
            middleware:'auth'
        }

    },
    {
        name:'team_list',
        path:'/team_list',
        component:Team_list,
        meta:{
            middleware:'auth'
        }

    },
    {
        name:'d_team',
        path:'/d_team',
        component:D_Team,
        meta:{
            middleware:'auth'
        }

    },
    {
        name:'edit_team',
        path:'/edit_team/:id',
        component:Edit_Team,
        meta:{
            middleware:'auth'
        }

    },
    {
        name:'client_list',
        path:'/client_list',
        component:Client_list,
        meta:{
            middleware:'auth'
        }
    },
    {
        name:'d_client',
        path:'/d_client',
        component:D_Client,
        meta:{
            middleware:'auth'
        }
    },
    {
        name:'edit_client',
        path:'/edit_client/:id',
        component:Edit_Client,
        meta:{
            middleware:'auth'
        }
    },
    {
        name:'testimonial_list',
        path:'/testimonial_list',
        component:Testimonial_list,
        meta:{
            middleware:'auth'
        }
    },
    {
        name:'d_testimonial',
        path:'/d_testimonial',
        component:D_Testimonial,
        meta:{
            middleware:'auth'
        }
    },
    {
        name:'edit_testimonial',
        path:'/edit_testimonial/:id',
        component:Edit_Testimonial,
        meta:{
            middleware:'auth'
        }
    },
    {
        name:'general_list',
        path:'/general_list',
        component:General_list,
        meta:{
            middleware:'auth'
        }
    },
    {
        name:'d_general',
        path:'/d_general',
        component:D_General,
        meta:{
            middleware:'auth'
        }
    },

    {
        name:'edit_general',
        path:'/edit_general/:id',
        component:Edit_General,
        meta:{
            middleware:'auth'
        }
    },
    {
        name:'social_list',
        path:'/social_list',
        component:Social_list,
        meta:{
            middleware:'auth'
        }
    },
    {
        name:'d_social',
        path:'/d_social',
        component:D_Social,
        meta:{
            middleware:'auth'
        }
    },

    {
        name:'edit_social',
        path:'/edit_social/:id',
        component:Edit_Social,
        meta:{
            middleware:'auth'
        }
    },
     {
        name:'contact_list',
        path:'/contact_list',
        component:Contact_list,
        meta:{
            middleware:'auth'
        }
    },
     {
        name:'appointment_list',
        path:'/appointment_list',
        component:Appointment_list,

    },
    // login dashboard ------------------
    {
        name:'login',
        path:'/login',
        component:Login,
        meta:{
            middleware:'guest'
        }
    },
    {
        name:'dashboard',
        path:'/dashboard',
        component:Dashboard,
        meta:{
            middleware:'auth'
        }
    },
]
const router=createRouter({
    history:createWebHistory(),
    routes
})
router.beforeEach((to,from,next)=>{
    if(to.meta.middleware=='guest'){
        if(store.state.auth.auth){
            next({name:'dashboard'})
        }
        next()
    }else{
        if(store.state.auth.auth){
            next()
        }
        next({name:'login'})

    }
})
export default router;
