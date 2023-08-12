<template>
    <footer class="footer-area">
        <div class="footer-widget">
          <div class="container">
            <div class="row footer-widget-wrapper pt-100 pb-70">
              <div class="col-md-6 col-lg-4" v-for="(d, i) in general" :key="i">
                <div class="footer-widget-box about-us">
                  <a href="#" class="footer-logo">
                    <img :src="`/uploads/${d.photo}`" alt />
                  </a>
                  <p class="mb-20">
                    Properly pest control company, one of the most prestigious pest control services in Dhaka and other areas in Bangladesh..
                  </p>
                  <div class="footer-contact"  >
                    <ul>
                      <li>
                        <i class="far fa-map-marker-alt"></i>{{ d.address }}
                      </li>
                      <li>
                        <a href="phone:01712129322"
                          ><i class="far fa-phone"></i>{{d.phone}}</a
                        >
                      </li>
                      <li>
                        <a>
                          <i class="far fa-envelope"></i
                          ><span
                            class="__cf_email__"
                            data-cfemail=""
                            >{{ d.email }}</span
                          ></a
                        >
                      </li>
                    </ul>
                  </div>
                  <ul class="footer-social"  v-for="(s, i) in social" :key="i">
                    <li>
                      <a :href="s.facebook" ><i class="fab fa-facebook-f"></i></a>
                    </li>
                    <li>
                      <a :href="s.instagram"><i class="fab fa-instagram"></i></a>
                    </li>
                    <li>
                      <a :href="s.twitter"><i class="fab fa-twitter"></i></a>
                    </li>
                    <li>
                      <a :href="s.youtube"><i class="fab fa-youtube"></i></a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="col-md-6 col-lg-2">
                <div class="footer-widget-box list">
                  <h4 class="footer-widget-title">Quick Links</h4>
                  <ul class="footer-list">
                    <li class="nav-item">
                    <router-link to="/" ><i class="fas fa-caret-right"></i>Home</router-link>
                    </li>
                    <li class="nav-item">
                    <router-link to="/about" ><i class="fas fa-caret-right"></i>About</router-link>
                    </li>
                    <li class="nav-item">
                    <router-link to="/pricing" ><i class="fas fa-caret-right"></i>Our Pricing</router-link>
                    </li>
                    <li class="nav-item">
                    <router-link to="/service" ><i class="fas fa-caret-right"></i>Services</router-link>
                    </li>
                    <li class="nav-item">
                    <router-link to="/project" ><i class="fas fa-caret-right"></i>Project</router-link>
                    </li>
                    <li class="nav-item">
                    <router-link to="/blog" ><i class="fas fa-caret-right"></i>Blog</router-link>
                    </li>
                    <li class="nav-item">
                    <router-link to="/contact" ><i class="fas fa-caret-right"></i>Contact</router-link>
                    </li>
                </ul>
                </div>
              </div>
              <div class="col-md-6 col-lg-3">
                <div class="footer-widget-box list">
                  <h4 class="footer-widget-title">Our Services</h4>
                  <ul class="footer-list">
                    <li>
                      <router-link to="/commercial_pest_control"><i class="fas fa-caret-right"></i>Commercial Pest
                        Control</router-link>
                    </li>
                    <li>
                      <router-link to="/industrial_pest_control"><i class="fas fa-caret-right"></i>Industrial Pest
                        Control</router-link>
                    </li>
                    <li>
                      <router-link to="/residential_pest_control"><i class="fas fa-caret-right"></i>Residential Pest
                        Control</router-link>
                    </li>
                    <li>
                      <router-link to="/cockroach_control"><i class="fas fa-caret-right"></i>Cockroach Pest Control
                        Control</router-link>
                    </li>
                    <li>
                      <router-link to="/bedbug_control"><i class="fas fa-caret-right"></i>BedBugs Pest Control</router-link>
                    </li>
                    <li>
                      <router-link to="/termites_control"><i class="fas fa-caret-right"></i>Termites Pest Control</router-link>
                    </li>
                    <li>
                      <router-link to="/rodents_control"><i class="fas fa-caret-right"></i>Rodents Pest Control</router-link>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="col-md-6 col-lg-3">
                <div class="footer-widget-box list">
                  <h4 class="footer-widget-title">Newsletter</h4>
                  <div class="footer-newsletter">
                    <p>
                      Subscribe Our Newsletter To Get Latest Update And News
                    </p>
                    <div class="subscribe-form">
                      <form action="#">
                        <input
                          type="email"
                          class="form-control"
                          placeholder="Your Email"
                        />
                        <button class="theme-btn" type="submit">
                          Subscribe Now <i class="far fa-paper-plane"></i>
                        </button>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="copyright">
          <div class="container">
            <div class="row">
              <div class="col-lg-12 align-self-center">
                <p class="copyright-text" style='text-align: center;'>
                  &copy; Copyright <span id="date"></span>
                  <a href="#"> Properly Pest Control </a> All Rights Reserved.
                </p>
              </div>
          
            </div>
          </div>
        </div>
      </footer>
</template>

<script>
export default{
    name:'Footer',
    // data() {
    //     return {
    //         delete:'',
    //         phone:'',
    //         address:'',
    //         email:'',
    //         photo:'',
    //     };
    // },
    // methods: {
    //     getgeneral() {
    //         axios.get("api/general").then((response) => {
    //             this.phone = response.data[0].phone;
    //             this.address = response.data[0].address;
    //             this.email = response.data[0].email;
    //             this.photo = response.data[0].photo;
    //             this.delete = response.data[0].id;
    //              console.log(response.data[0].id);
    //         });
    //     },
    //     delete_general(id) {
    //         axios.delete(`/api/general/${id}`).then((response) => {
    //             this.delete = response.data[0].id;
    //             // console.log(response.data.data);
    //             this.getgeneral();
    //         });
    //     },
    // },
    // mounted() {
    //     this.getgeneral();
    // },

    data() {
        return {
            general: [],
            social: [],
        };
    },
    methods: {
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

        getsocial() {
            axios.get("api/social").then((response) => {
                this.social = response.data.data;
                // console.log(response.data.data);
            });
        },
        delete_social(id) {
            axios.delete(`/api/social/${id}`).then((response) => {
                this.social = response.data.data;
                // console.log(response.data.data);
                this.getsocial();
            });
        },
    },
    mounted() {
        this.getgeneral();
        this.getsocial();
    },
}
</script>