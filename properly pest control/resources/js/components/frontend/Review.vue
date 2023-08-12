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
              It is a long established fact that a reader will be
              distracted
            </p>
          </div>
        </div>
      </div>
      <div class="col-md-12">
      <!-- <div class="testimonial-slider owl-theme"> -->
        <VueAIcarousel :Property="{ID: 'Unique_id'}">
        <div class="cards" v-for="(d, i) in testimonial" :key="i" style="height: 200px; width: 400px;" >
                <div class="row" >

                            <span class=""><i class="fal fa-quote-left"></i></span>
                            <p style="font-size: 20px;">
                            {{ d.comment }}
                            </p>
                    <img :src="`uploads/${d.photo}`" alt  height="100" width="100"/>


                        <h4 style="text-align: center;">{{ d.name }}</h4>
                        <p>{{ d.designation }}</p>
                        <!-- <div class="testimonial-rate">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div> -->

                </div>
        </div>
        <div>
    </div>
      </VueAIcarousel>
    </div>
    </div>
  </div>
</template>
<style scoped>
.cards {

  height:400px;
  width:300px;
}
</style>

<script>
import VueAIcarousel from "vue-ai-carousel"
export default {
  components: { VueAIcarousel },
  name: "Review",
  data() {
        return {
            testimonial: [],
        };
    },
    methods: {
        gettestimonial() {
            axios.get("api/testimonial").then((response) => {
                this.testimonial = response.data.data;
                console.log(response.data.data);
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
}
</script>

