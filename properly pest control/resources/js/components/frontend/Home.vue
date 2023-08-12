<template>

    <body>


    <!-- STATS Menu-area -->
     <Menu></Menu>
    <!-- END Menu-area -->

      <main class="main">
        <div class="hero-section hero-slider owl owl-theme" v-for="(d, i) in banner" :key="i">
          <div
            class="hero-single"
            :style="'background-image: url(/uploads/' + d.photo + ')'"
            >
            <div class="container">
              <div class="row align-items-center">
                <div class="col-md-7 col-lg-7">
                  <div class="hero-content">
                    <h6
                      class="hero-sub-title wow animate__animated animate__fadeInUp"
                      data-wow-duration="1s"
                      data-wow-delay=".25s"
                    >
                    {{ d.title }}
                    </h6>
                    <h1
                      class="hero-title wow animate__animated animate__fadeInUp"
                      data-wow-duration="1s"
                      data-wow-delay=".50s"
                    >

                      {{ d.headline }}
                    </h1>
                    <p
                      class="wow animate__animated animate__fadeInUp"
                      data-wow-duration="1s"
                      data-wow-delay=".75s"
                      style="color: rgb(77, 255, 0);"
                    >

                    {{ d.description }}
                    </p>
                    <div
                      class="hero-btn wow animate__animated animate__fadeInUp"
                      data-wow-duration="1s"
                      data-wow-delay="1s"
                    >

                      <router-link to="/contact" class="theme-btn">Contact Us<i class="far fa-arrow-right"></i
                      ></router-link>

                      <router-link to="/about" class="theme-btn theme-btn2">About Us<i class="far fa-arrow-right"></i
                      ></router-link>

                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>

        <div class="appointment-area">
          <div class="container">
            <div class="appointment-content">
              <h3>Find Your Pest Control Service</h3>
              <div class="appointment-form">
                <div>
                  <div class="row align-items-center">
                    <div class="col-lg-3">
                      <div class="form-group">
                        <select class="form-select" v-model="service">
                          <option value>Select Your Service</option>
                          <option value="Cockroach Control Services">Cockroach Control Services</option>
                          <option value="Rodent Control Services">Rodent Control Services</option>
                          <option value="Termite Control Services">Termite Control Services</option>
                          <option value="Bedbugs Control Services">Bedbugs Control Services</option>
                          <option value="Mosquito Control Services">Mosquito Control Services</option>
                          <option value="Ant Control Services">Ant Control Services</option>
                          <option value="Flies Control Services">Flies Control Services</option>
                          <option value="Lizard Control Services">Lizard Control Services</option>
                          <option value="Spider Control Services">Spider Control Services</option>
                          <option value="Residential Pest Control">Residential Pest Control</option>
                          <option value="Commercial Pest Control">Commercial Pest Control</option>
                          <option value="Industrial Pest Control">Industrial Pest Control</option>
                        </select>
                      </div>
                    </div>
                    <div class="col-lg-3">
                      <div class="form-group">
                        <input
                          type="email"
                          class="form-control"
                          placeholder="Your Email"
                          v-model="email"
                        />
                      </div>
                    </div>
                    <div class="col-lg-2">
                      <div class="form-group">
                        <input
                          type="text"
                          class="form-control"
                          placeholder="Your Name"
                          v-model="name"
                        />
                      </div>
                    </div>
                    <div class="col-lg-2">
                      <div class="form-group">
                        <input
                          type="text"
                          class="form-control"
                          placeholder="Your Phone"
                          v-model="phone"
                        />
                      </div>
                    </div>
                    <div class="col-lg-2">
                      <button type="submit javascript:void(0)" class="theme-btn" @click="SendData">
                        Get Start <i class="far fa-arrow-right"></i>
                      </button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="feature-area pt-120">
          <div class="container">
            <div class="row">
              <div class="col-md-6 col-lg-4">
                <div class="feature-item">
                  <i class="flaticon-lawyer"></i>
                  <div class="feature-content">
                    <h4><a href="#">Experts Staff</a></h4>
                    <p>
                      These professionals are responsible for carrying out pest control treatments and inspections. They should have proper training and certifications in pest control techniques, as well as knowledge of different types of pests and their behavior.
                    </p>
                  </div>
                </div>
              </div>
              <div class="col-md-6 col-lg-4">
                <div class="feature-item">
                  <i class="flaticon-pesticide"></i>
                  <div class="feature-content">
                    <h4><a href="#">Quality Work</a></h4>
                    <p>
                      Use high-quality pest control products and equipment that are effective and safe. This includes insecticides, traps, baits, and protective gear for technicians. Investing in reliable equipment ensures efficient and accurate pest control.
                    </p>
                  </div>
                </div>
              </div>
              <div class="col-md-6 col-lg-4">
                <div class="feature-item">
                  <i class="flaticon-settings"></i>
                  <div class="feature-content">
                    <h4><a href="#">Affordable Price</a></h4>
                    <p>
                      Research the prices offered by other pest control service providers in your area. This will help you determine a competitive and reasonable pricing structure.This helps customers understand that they are paying for quality and peace of mind.
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- About Area -->
       <Aboutus></Aboutus>
       <!-- End About Area -->

        <!-- PEST CONTROL -->
        <Pest></Pest>
        <!-- PEST CONTROL -->


        <!-- STATS service-area -->
        <Services></Services>
        <!-- END service-area -->



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

        <!-- STATS case-area -->
        <Case></Case>
        <!-- END case-area -->

        <div
          class="video-area"
          style="background-image: url(frontend/img/video/video.jpg)"
        >
          <div class="container">
            <div class="row align-items-center">
              <div class="col-lg-12">
                <div class="video-wrapper">
                  <a
                    class="play-btn popup-youtube"
                    href="https://www.facebook.com/properlypestcontrol/videos/944795406182354"
                  >
                    <i class="fas fa-play"></i>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="skill-area py-120">
          <div class="container">
            <div class="skill-wrapper">
              <div class="row">
              <div class="col-lg-6 mx-auto">
                <div class="site-heading text-center">
                  <span class="site-title-tagline">Our Skills</span>
                  <h2 class="site-title"> We Offers Best <span>Pest Control</span> Service</h2>
                  <div class="heading-divider"></div>
                 
                </div>
              </div>
            </div>
              <div class="row g-5 align-items-center">
                <div class="col-lg-6 col-12">
                  <div class="skill-left">
                    <div class="skill-img">
                      <img src="frontend/img/skill/01.jpg" alt="thumb" />
                    </div>
                  </div>
                </div>
                <div class="col-lg-6 col-12">
                  <div class="skill-right">
                   
                    <p class="skill-details">
                      Every pest infestation is unique and requires a tailored approach. Professional pest control companies assess the specific situation and develop customized treatment plans based on the type of pest, the extent of the infestation, and the property’s layout. They employ a range of techniques and treatments, ensuring the most effective solution for each case.
                    </p>
                    <div class="skills-section">
                      <div class="progress-box">
                        <h5>
                          Resindential 
                        </h5>
                        <div class="progress" data-value="85">
                          <div class="progress-bar" role="progressbar"></div>
                        </div>
                      </div>
                      <div class="progress-box">
                        <h5>Commercial</h5>
                        <div class="progress" data-value="65">
                          <div class="progress-bar" role="progressbar"></div>
                        </div>
                      </div>
                      <div class="progress-box">
                        <h5>Industrial</h5>
                        <div class="progress" data-value="75">
                          <div class="progress-bar" role="progressbar"></div>
                        </div>
                      </div>
                    </div>
                    <a href="#" class="theme-btn mt-5"
                      >Learn More <i class="far fa-arrow-right"></i
                    ></a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- STATS team-area -->
              <Team></Team>
        <!-- END team-area -->



        <div class="choose-area pt-50 pb-50">
          <div class="choose-img"></div>
          <div class="container">
            <div class="row align-items-center">
              <div class="col-lg-6 offset-lg-6 choose-right">
                <div class="choose-right-content">
                  <div class="site-heading mb-3">
                    <span class="site-title-tagline">Why Choose Us</span>
                    <h2 class="site-title my-3 text-white">
                      We Are Expert In <span>Pest Control</span> Services
                    </h2>
                  </div>
                  <p class="about-text">
                     Properly pest control company, one of the most prestigious pest control services in Dhaka and other areas in Bangladesh..
                  </p>
                  <ul class=" list-unstyled">
                    <li>
                      <h5>Our specialties</h5>
                      <p>
                        >>>  100% customer satisfaction guaranteed.
                      </p>
                      <p>
                        >>>  No extra/hidden charge.
                      </p>
                      <p>
                        >>>  Best service at a reasonable price.
                      </p>
                      <p>
                        >>>  Best medicine.
                      </p>
                      <p>
                        >>>  Well trained staff.
                      </p>
                      <p>
                        >>>  Free assessment.
                      </p>
                      <p>
                        >>>  24/7 available at service.
                      </p>
                      <p>
                        >>>  Fast Service.
                      </p>
                    </li>
                  </ul>
                  <router-link to="/contact" class="theme-btn">Start Project<i class="far fa-arrow-right"></i
                  ></router-link>
                
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- STATS testimonial-area -->
         <Testimonial></Testimonial>
        <!-- END testimonial-area -->

        <!-- STATS blog-area -->
         <Blogs></Blogs>
        <!-- END blog-area -->

        <!-- STATS partner-area -->
         <Client></Client>



      </main>

      <Footer></Footer>

      <a href="#" id="scroll-top"><i class="far fa-long-arrow-up"></i></a>
    </body>


</template>

<script>
import Menu from '../frontend/frontend_layout/Menu.vue'
import Footer from '../frontend/frontend_layout/Footer.vue'
import Aboutus from '../frontend/frontend_layout/Aboutus.vue'
import Pest from '../frontend/frontend_layout/Pest.vue'
import Services from '../frontend/frontend_layout/Services.vue'
import Case from '../frontend/frontend_layout/Case.vue'
import Team from '../frontend/frontend_layout/Team.vue'
import Testimonial from '../frontend/frontend_layout/Testimonial.vue'
import Blogs from './frontend_layout/Blogs.vue'
import Client from '../frontend/frontend_layout/Client.vue'
// import VueAIcarousel from "../frontend/frontend_layout/VueAIcarousel.vue"
export default {
  components:{Menu,Footer,Aboutus,Pest,Services,Case,Team,Testimonial,Blogs,Client,},
  name: "Home",
  data() {
    return {
      banner: [],
      name: "",
      email: "",
      phone: "",
      service: "",
    };
  },
  methods: {
    SendData() {
      let formData = new FormData();
      formData.append("name", this.name);
      formData.append("email", this.email);
      formData.append("phone", this.phone);
      formData.append("service", this.service);

      axios
        .post("api/appointment", formData, {
          headers: {
            "Content-Type": "miltipart/from-data",
          },
        })
        .then((Response) => {
            (this.name = ""),
            (this.email = ""),
            (this.phone = ""),
            (this.service = "");
        });
    },
    getbanner() {
            axios.get("api/banner").then((response) => {
                this.banner = response.data.data;
                // console.log(response.data.data);
            });
        },
        delete_banner(id) {
            axios.delete(`/api/banner/${id}`).then((response) => {
                this.banner = response.data.data;
                // console.log(response.data.data);
                this.getbanner();
            });
        },
  },

  mounted() {
        this.getbanner();
    },

};
</script>
