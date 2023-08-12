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
      <!-- STATS Menu-area -->
      <Menu></Menu>
      <!-- END Menu-area -->

      <main class="main" v-for="(d, i) in general" :key="i">
        <div
          class="site-breadcrumb"
          style="background: url(frontend/img/breadcrumb/breadcrumb.jpg)"
        >
          <div class="container">
            <h2 class="breadcrumb-title">Contact Us</h2>
            <ul class="breadcrumb-menu">
              <li>
                <router-link to="/"><i class="far fa-home"></i> Home</router-link>
              </li>
              <li class="active">Contact Us</li>
            </ul>
          </div>
        </div>

        <div class="contact-area py-120" style="background-color: bisque;">
          <div class="container">
            <div class="contact-wrapper" style="background-color: rgb(73, 184, 236);">
              <div class="row">
                <div class="col-md-8 align-self-center">
                  <div class="contact-form">
                    <div class="contact-form-header">
                      <h2 class="theme-btn" style="background-color: gold; text-align: center;"><span>Get In Touch</span></h2>
                      <h2 class="sec-title text-center">Don’t Hesitate to <span>Question Us</span> <br> Any Time</h2>

                    </div>
                    <div id="contact-form">
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <input
                              type="text"
                              class="form-control"
                              name="name"
                              placeholder="Your Name"
                              v-model="name"
                              required
                            />
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <input
                              type="email"
                              class="form-control"
                              name="email"
                              placeholder="Your Email"
                              v-model="email"
                              required
                            />
                          </div>
                        </div>
                      </div>
                      <div class="form-group">
                        <input
                          type="text"
                          class="form-control"
                          name="subject"
                          placeholder="Your Subject"
                          v-model="subject"
                          required
                        />
                      </div>
                      <div class="form-group">
                        <textarea
                          name="message"
                          cols="30"
                          rows="5"
                          class="form-control"
                          placeholder="Write Your Message"
                          v-model="message"
                        ></textarea>
                      </div>
                      <button type="submit" class="theme-btn" @click="SendData">
                        Send Message <i class="far fa-paper-plane"></i>
                      </button>
                      <div class="col-md-12 mt-3">
                        <div class="form-messege text-success"></div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-4"  >
                  <div class="contact-content">
                    <div class="contact-info">
                      <div class="contact-info-icon">
                        <i class="fal fa-map-marker-alt"></i>
                      </div>
                      <div class="contact-info-content">
                        <h5>Office Address</h5>
                        <p>{{ d.address }}</p>
                      </div>
                    </div>
                    <div class="contact-info">
                      <div class="contact-info-icon">
                        <i class="fal fa-phone"></i>
                      </div>
                      <div class="contact-info-content">
                        <h5>Call Us</h5>
                        <p>{{d.phone}}</p>
                      </div>
                    </div>
                    <div class="contact-info">
                      <div class="contact-info-icon">
                        <i class="fal fa-envelope"></i>
                      </div>
                      <div class="contact-info-content">
                        <h5>Email Us</h5>
                        <p>
                          <a
                            class="__cf_email__"
                            data-cfemail=""
                            >{{ d.email }}</a
                          >
                        </p>
                      </div>
                    </div>
                    <div class="contact-info">
                      <div class="contact-info-icon">
                        <i class="fal fa-clock"></i>
                      </div>
                      <div class="contact-info-content">
                        <h5>Office Open</h5>
                        <p>Sun - Fri (08AM - 10PM)</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="contact-map">
          <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14605.23561983525!2d90.41990250578043!3d23.77201190167905!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1690221168362!5m2!1sen!2sbd" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
          
        </div>
      </main>

      <!-- STATS Footer-area -->
      <Footer></Footer>
      <!-- END Footer-area -->

      <a href="#" id="scroll-top"><i class="far fa-long-arrow-up"></i></a>
    </body>
  </html>
</template>

      <script>
import Menu from "./frontend_layout/Menu.vue";
import Footer from "./frontend_layout/Footer.vue";
import axios from "axios";
export default {
  name: "Contact",
  components: { Menu, Footer },

  data() {
    return {
      general: [],
      name: "",
      email: "",
      subject: "",
      message: "",
    };
  },
  methods: {
    SendData() {
      let formData = new FormData();
      formData.append("name", this.name);
      formData.append("email", this.email);
      formData.append("subject", this.subject);
      formData.append("message", this.message);

      axios
        .post("api/contact", formData, {
          headers: {
            "Content-Type": "miltipart/from-data",
          },
        })
        .then((Response) => {
          (this.name = ""),
            (this.email = ""),
            (this.subject = ""),
            (this.message = "");
        });
    },

    getgeneral() {
      axios.get("api/general").then((response) => {
        this.general = response.data.data;
        // console.log(response.data.data);
      });
    },
    delete_general(id) {
      axios.delete(`/api/general/${id}`).then((response) => {
        this.general = response.data.data;
        // console.log(response.data.data);
        this.getgeneral();
      });
    },
  },

  mounted() {
    this.getgeneral();
  },
};
</script>
