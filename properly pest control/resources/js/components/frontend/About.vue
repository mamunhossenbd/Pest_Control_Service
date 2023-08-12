<template>
  <!DOCTYPE html>
  <html lang="en">

    <head>
      <meta charset="UTF-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <meta name="description" content />
      <meta name="keywords" content />

      <title>Properly - Pest Control Services</title>

    </head>
    <body>
  
      <Menu></Menu>
      
      <main class="main">
        <div
          class="site-breadcrumb"
          style="background: url(frontend/img/breadcrumb/breadcrumb.jpg)"
        >
          <div class="container">
            <h2 class="breadcrumb-title">About Us</h2>
            <ul class="breadcrumb-menu">
              <li>
                <router-link to="/"><i class="far fa-home"></i> Home</router-link>
              </li>
              <li class="active">About Us</li>
            </ul>
          </div>
        </div>

         <!-- About Area -->
         <Aboutus></Aboutus>
       <!-- End About Area -->

       <div class="counter-area">
          <div class="container">
            <div class="row">
             
              <div class="col-lg-6 col-sm-6">
                <div class="counter-box">
                  <div class="icon"><i class="fal fa-gas-pump"></i></div>
                
                  <h6 class="title">+ Customer Satisfaction</h6>
                  <p style="color: blue;">
                  Customer satisfaction is our top priority. We aim to build strong, long-term relationships with our clients by delivering exceptional service and exceeding their expectations. Our friendly and professional staff is always available to address any concerns or queries you may have throughout the process.
                </p>
                </div>
              </div>
              <div class="col-lg-6 col-sm-6">
                <div class="counter-box">
                  <div class="icon"><i class="fal fa-user-friends"></i></div>
              
                  
                  <h6 class="title">+ Reputation and Experience</h6>
                  <p style="color: blue;">
                  When selecting a professional pest control company, it is important to consider their reputation and experience. Look for companies with a proven track record of delivering effective pest control services. Reading customer reviews and testimonials can provide valuable insights into their reliability and quality of work.
                </p>
                </div>
              </div>
              
            </div>
          </div>
        </div>

       <!-- STATS testimonial-area -->
       <Testimonial></Testimonial>
        <!-- END testimonial-area -->

        <!-- STATS team-area -->
             <Team></Team>
        <!-- END team-area -->

          <!-- STATS partner-area -->
          <Client></Client>
        <!-- END partner-area -->
      </main>

     <Footer></Footer>

      <a href="#" id="scroll-top"><i class="far fa-long-arrow-up"></i></a>
    </body>
  </html>
</template>
  <script>
  import Menu from '../frontend/frontend_layout/Menu.vue'
  import Footer from '../frontend/frontend_layout/Footer.vue'
  import Aboutus from '../frontend/frontend_layout/Aboutus.vue'
  import Testimonial from './frontend_layout/Testimonial.vue'
  import Team from './frontend_layout/Team.vue'
  import Client from './frontend_layout/Client.vue'
export default {
  name: "About",
  components:{Menu,Footer,Aboutus, Testimonial,Team,Client}
};
</script>
