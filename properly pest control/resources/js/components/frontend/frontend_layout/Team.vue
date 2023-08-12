<template>
     <div class="team-area pb-120">
          <div class="container">
            <div class="row">
              <div class="col-lg-6 mx-auto">
                <div class="site-heading text-center">
                  <span class="site-title-tagline">Team</span>
                  <h2 class="site-title">Meet <span>Experts</span></h2>
                  <div class="heading-divider"></div>
                  <p>
                    <!-- It is a long established fact that a reader will be
                    distracted -->
                  </p>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6 col-lg-4 col-xl-3"  v-for="(d, i) in team" :key="i">
                <div class="team-item">
                  <img :src="`uploads/${d.photo}`" alt="thumb" />
                  <div class="team-social">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-linkedin-in"></i></a>
                  </div>
                  <div class="team-content">
                    <div class="team-bio">
                      <h5><a href="#">{{ d.name }}</a></h5>
                      <span>{{ d.designation }}</span>
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
    name:'Team',
    data() {
        return {
            team: [],
        };
    },
    methods: {
        getteam() {
            axios.get("api/team").then((response) => {
                this.team = response.data.data;
                // console.log(response.data.data);
            });
        },
        delete_team(id) {
            axios.delete(`/api/team/${id}`).then((response) => {
                this.team = response.data.data;
                // console.log(response.data.data);
                this.getteam();
            });
        },
    },
    mounted() {
        this.getteam();
    },
}
</script>