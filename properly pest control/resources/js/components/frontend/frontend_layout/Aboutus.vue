<template>
     <div class="about-area py-120">
          <div class="container"  v-for="(d, i) in about" :key="i">
            <div class="row">
        <div class="col-lg-6 mx-auto">
          <div class="site-heading text-center">
            <span class="site-title-tagline">About Us</span>
            <h2 class="site-title">{{ d.title }}</h2>
           
          </div>
        </div>
      </div>
            <div class="row align-items-center">
              <div class="col-lg-6">
                <div class="about-left">
                  <div class="about-img">
                    <img :src="`uploads/${d.photo}`" alt />
                  </div>
                  <div class="about-experience">
                    <h1>{{ d.year }} <span>+</span></h1>
                    <span class="about-experience-text"
                      >Years Of Experience</span
                    >
                  </div>
                  <div class="about-shape">
                    <img src="/frontend/img/about/shape.svg" alt />
                  </div>
                </div>
              </div>
              <div class="col-lg-6">
                <div class="about-right">
                 
                  <p class="about-text" style="color: blue;">
                    {{ d.description }}
                  </p>
                  <router-link to="/about" class="theme-btn">Discover More <i class="far fa-arrow-right"></i>
                  </router-link>
                  
                </div>
              </div>
            </div>
          </div>
        </div>
</template>
<script>
export default{
    name:'Aboutus',
    data() {
    return {
      about: [],
    };
  },
  methods: {
    getabout() {
      axios.get("api/about_list").then((response) => {
        this.about = response.data.data;
        // console.log(response.data.data);
      });
    },
    delete_about(id) {
      axios.delete(`/api/about_list/${id}`).then((response) => {
        this.about = response.data.data;
        // console.log(response.data.data);
        this.getabout();
      });
    },
  },
  mounted() {
    this.getabout();
  },
}
</script>