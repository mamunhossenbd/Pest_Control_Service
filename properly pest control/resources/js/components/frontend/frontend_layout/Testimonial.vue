<template>
  <div class="testimonial-area bg py-120">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 mx-auto">
          <div class="site-heading text-center">
            <span class="site-title-tagline">Testimonials</span>
            <h2 class="site-title">What Client <span>Say's</span></h2>
            <div class="heading-divider"></div>
            <p>
              <!-- It is a long established fact that a reader will be distracted -->
            </p>
          </div>
        </div>
      </div>
      <div class="testimonial-slider owl-theme" v-for="(d, i) in testimonial" :key="i">
        <div class="testimonial-single">
          <div class="testimonial-quote">
            <span class="testimonial-quote-icon"
              ><i class="fal fa-quote-left"></i
            ></span>
            <p>
              {{ d.comment }}
            </p>
          </div>
          <div class="testimonial-content">
            <div class="testimonial-author-img">
              <img :src="`uploads/${d.photo}`" alt />
            </div>
            <div class="testimonial-author-info">
              <h4>{{ d.name }}</h4>
              <p>{{ d.designation }}</p>
              <div class="testimonial-rate">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
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
  name: "Testimonial",
  data() {
        return {
            testimonial: [],
        };
    },
    methods: {
        gettestimonial() {
            axios.get("api/testimonial").then((response) => {
                this.testimonial = response.data.data;
                // console.log(response.data.data);
            });
        },
        delete_testimonial(id) {
            axios.delete(`/api/testimonial/${id}`).then((response) => {
                this.testimonial = response.data.data;
                // console.log(response.data.data);
                this.gettestimonial();
            });
        },
    },
    mounted() {
        this.gettestimonial();
    },
};
</script>
