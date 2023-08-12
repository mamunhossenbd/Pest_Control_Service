<template>
       <div class="service-area py-120">
          <div class="container">
            <div class="row">
              <div class="col-lg-6 mx-auto">
                <div class="site-heading text-center">
                  <span class="site-title-tagline">Services</span>
                  <h2 class="site-title">What We <span>Offer</span></h2>
                  <p>
               
                  </p>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6 col-lg-4"  v-for="(d, i) in service" :key="i">
                <div class="service-item">
                  <div class="service-img">
                    <img :src="`uploads/${d.photo}`" alt />
                  </div>
                  <div class="service-info">
                    <h3 class="service-title">
                      <a href="#">{{ d.headline }}</a>
                    </h3>
                    <p class="service-text">
                      {{ d.description }}
                    </p>
                    <div class="service-arrow">
                      <a href="#" class="service-read-btn"
                        >Learn More<i class="far fa-arrow-right"></i
                      ></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
</template>

<script>
export default{
    name:'Service',
    data() {
        return {
            service: [],
        };
    },
    methods: {
        getservice() {
            axios.get("api/service").then((response) => {
                this.service = response.data.data;
                // console.log(response.data.data);
            });
        },
        delete_service(id) {
            axios.delete(`/api/service/${id}`).then((response) => {
                this.service = response.data.data;
                // console.log(response.data.data);
                this.getservice();
            });
        },
    },
    mounted() {
        this.getservice();
    },
}
</script>