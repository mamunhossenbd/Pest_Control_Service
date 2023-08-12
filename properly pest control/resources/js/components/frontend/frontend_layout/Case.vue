<template>
    <div class="case-area py-120">
          <div class="container">
            <div class="row popup-gallery">
                <div class="site-heading text-center">
                  <span class="site-title-tagline">Cases</span>
                  <h2 class="site-title">Recent <span>Projects</span></h2>
                  <div class="heading-divider"></div>
                  <p>
                    Same Recent Projects Given below.
                  </p>
                </div>
              <div class="col-md-6 col-lg-4"  v-for="(d, i) in project" :key="i">

                <div class="case-item">
                  <div class="case-img">
                    <img class="img-fluid" :src="`uploads/${d.photo}`" alt />
                  
                  </div>
                  <div class="case-content" >
                    <div class="case-content-info">
                      <small>{{ d.headline }}</small>
                      <h4><a href="#">{{ d.description }}</a></h4>
                    </div>
                    <a href="#" class="case-arrow"
                      ><i class="far fa-arrow-right"></i
                    ></a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
</template>

<script>
export default{
    name:'Case',
    data() {
        return {
            project: [],
        };
    },
    methods: {
        getproject() {
            axios.get("api/project").then((response) => {
                this.project = response.data.data;
                // console.log(response.data.data);
            });
        },
        delete_project(id) {
            axios.delete(`/api/project/${id}`).then((response) => {
                this.project = response.data.data;
                // console.log(response.data.data);
                this.getproject();
            });
        },
    },
    mounted() {
        this.getproject();
    },
}
</script>