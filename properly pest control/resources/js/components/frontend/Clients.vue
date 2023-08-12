<template>
  <div class="partner-area pt-70 pb-70">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 mx-auto">
          <div class="site-heading text-center">
            <h2 class="site-title">Our <span>Valiable</span> Client</h2>
            <div class="heading-divider"></div>
          </div>
        </div>
      </div>
      <div class="partner-wrapper partner-slider owl-theme">
        <VueAIcarousel :Property="{ ID: 'Unique_id' }">
          <div v-for="(d, i) in client" :key="i">
            <img :src="`/uploads/${d.photo}`" alt="thumb" />
          </div>
        </VueAIcarousel>
      </div>
    </div>
  </div>
</template>


  <script>
import VueAIcarousel from "vue-ai-carousel";
export default {
  components: { VueAIcarousel },
  name: "Clients",
  data() {
    return {
      client: [],
    };
  },
  methods: {
    getclient() {
      axios.get("api/client").then((response) => {
        this.client = response.data.data;
        // console.log(response.data.data);
      });
    },
    delete_client(id) {
      axios.delete(`/api/client/${id}`).then((response) => {
        this.client = response.data.data;
        // console.log(response.data.data);
        this.getclient();
      });
    },
  },
  mounted() {
    this.getclient();
  },
};
</script>

   

   