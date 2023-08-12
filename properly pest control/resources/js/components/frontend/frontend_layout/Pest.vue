<template>
  <div class="pest-problem bg py-120">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 mx-auto">
          <div class="site-heading text-center">
            <span class="site-title-tagline">Pest</span>
            <h2 class="site-title">Pest <span>Problem</span></h2>
            <p></p>
          </div>
        </div>
      </div>
      <div class="section pest-control bgc">
        <div class="container">
          <div class="row">
            <div class="col-sm-4 col-md-3" v-for="(d, i) in pest" :key="i">
              <div class="box-image">
                <div class="image">
                  <a href="" title=""
                    ><img
                      :src="`uploads/${d.photo}`"
                      alt="image"
                      class="img-responsive"
                  /></a>
                </div>
                <div class="description">
                  <h5 class="blok-title">
                    <a class="theme-btn theme-btn2" href="#"
                      >{{ d.name }}<i class="far fa-arrow"></i>
                    </a>
                    <p style="text-shadow: 0cm; color: brown">
                      {{ d.description }}
                    </p>
                    <router-link to="/contact" class="theme-btn"
                      >Contact Us<i class="far fa-arrow-right"></i
                    ></router-link>
                  </h5>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "Pest",
  data() {
    return {
      pest: [],
    };
  },
  methods: {
    getpest() {
      axios.get("api/pest").then((response) => {
        this.pest = response.data.data;
        // console.log(response.data.data);
      });
    },
    delete_pest(id) {
      axios.delete(`/api/pest/${id}`).then((response) => {
        this.pest = response.data.data;
        // console.log(response.data.data);
        this.getpest();
      });
    },
  },
  mounted() {
    this.getpest();
  },
};
</script>