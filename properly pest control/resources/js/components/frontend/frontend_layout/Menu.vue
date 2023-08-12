<template>
  <header class="header">
    <div class="header-top">
      <div class="container">
        <div class="header-top-wrapper">
          <div class="header-top-left" v-for="(d, i) in general" :key="i">
            <div class="header-top-contact">
              <ul>
                <li>
                  <a href="#"
                    ><i class="far fa-map-marker-alt"></i>{{ d.address }}</a
                  >
                </li>
                <li>
                  <a href="phone:01712129322"
                    ><i class="far fa-phone"></i>{{ d.phone }}</a
                  >
                </li>
                <li>
                  <a href=""
                    ><i class="far fa-envelope"></i
                    ><span>{{ d.email }}</span></a
                  >
                </li>
              </ul>
            </div>
          </div>
          <div class="header-top-right">
            <div class="header-top-social" v-for="(s, i) in social" :key="i">
              <a :href="s.facebook"><i class="fab fa-facebook-f"></i></a>
              <a :href="s.twitter"><i class="fab fa-twitter"></i></a>
              <a :href="s.instagram"><i class="fab fa-instagram"></i></a>
              <a :href="s.linkedin"><i class="fab fa-linkedin-in"></i></a>
              <a :href="s.whatsapp"><i class="fab fa-whatsapp"></i></a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="main-navigation">
      <nav class="navbar navbar-expand-lg">
        <div class="container">
          <router-link
            to="/"
            class="navbar-brand"
            v-for="(d, i) in general"
            :key="i"
          >
            <img
              :src="`/uploads/${d.photo}`"
              style="height: 80px; width: 300px"
              alt="logo"
            />
          </router-link>

          <div class="mobile-menu-right">
            <a href="#" class="mobile-search-btn search-box-outer"
              ><i class="far fa-search"></i
            ></a>
            <button
              class="navbar-toggler"
              type="button"
              data-bs-toggle="collapse"
              data-bs-target="#main_nav"
              aria-expanded="false"
              aria-label="Toggle navigation"
            >
              <span class="navbar-toggler-icon"
                ><i class="far fa-stream"></i
              ></span>
            </button>
          </div>
          <div class="collapse navbar-collapse" id="main_nav">
            <ul class="navbar-nav ms-auto">
              <li class="nav-item">
                <router-link to="/" class="nav-link">Home</router-link>
              </li>
              <li class="nav-item">
                <router-link to="/about" class="nav-link">About</router-link>
              </li>
              <li class="nav-item">
                <router-link to="/pricing" class="nav-link"
                  >Pricing</router-link
                >
              </li>

              <li class="nav-item dropdown">
                <a
                  class="nav-link dropdown-toggle"
                  href="#"
                  data-bs-toggle="dropdown"
                  >Services</a
                >
                <ul class="dropdown-menu fade-up">
                  <li class="nav-item">
                    <router-link to="/service" class="dropdown-item"
                      >Services</router-link
                    >
                  </li>
                  <li>
                    <router-link to="cockroach_control" class="dropdown-item"
                      >Cockroach Control</router-link
                    >
                  </li>
                  <li>
                    <router-link to="bedbug_control" class="dropdown-item"
                      >Bed Bug Control</router-link
                    >
                  </li>
                  <li>
                    <router-link to="termites_control" class="dropdown-item"
                      >Termites Control</router-link
                    >
                  </li>
                  <li class="active">
                    <router-link to="rodents_control" class="dropdown-item"
                      >Rodents Control</router-link
                    >
                  </li>
                  <li>
                    <router-link to="fly_control" class="dropdown-item"
                      >Fly Control</router-link
                    >
                  </li>
                  <li>
                    <router-link to="bee_control" class="dropdown-item"
                      >Bee Control</router-link
                    >
                  </li>
                  <li>
                    <router-link to="mosquito_control" class="dropdown-item"
                      >Mosquito Control</router-link
                    >
                  </li>
                </ul>
              </li>

              <li class="nav-item">
                <router-link to="/project" class="nav-link"
                  >Project</router-link
                >
              </li>
              <li class="nav-item">
                <router-link to="/blog" class="nav-link">Blog</router-link>
              </li>
              <li class="nav-item">
                <router-link to="/contact" class="nav-link"
                  >Contact</router-link
                >
              </li>
            </ul>
          
          </div>
        </div>
      </nav>
    </div>
  </header>


</template>

<script>
export default {
  name: "Menu",
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
};
</script>
