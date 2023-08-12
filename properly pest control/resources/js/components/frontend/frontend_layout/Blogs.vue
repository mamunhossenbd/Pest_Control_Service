<template>
     <div class="blog-area pt-120">
          <div class="container">
            <div class="row">
              <div class="col-lg-6 mx-auto">
                <div class="site-heading text-center">
                  <span class="site-title-tagline">Our Blog</span>
                  <h2 class="site-title">News & <span> Blog</span></h2>
                  <div class="heading-divider"></div>
                  <p>
                    <!-- It is a long established fact that a reader will be
                    distracted -->
                  </p>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6 col-lg-4" v-for="(d, i) in blog" :key="i">
                <div class="blog-item">
                  <div class="blog-item-img">
                    <img  :src="`uploads/${d.photo}`" alt="Thumb" />
                  </div>
                  <div class="blog-item-info">
                    <div class="blog-item-meta">
                      <ul>
                        <li>
                          <a href="#"
                            ><i class="far fa-user-circle"></i> {{ d.name }}</a
                          >
                        </li>
                        <li>
                          <a href="#"
                            ><i class="far fa-calendar-alt"></i>{{ d.date }}</a
                          >
                        </li>
                      </ul>
                    </div>
                    <h4 class="blog-title">
                      <a href="#"
                        >{{ d.headline }}</a
                      >
                    </h4>
                    <p>
                      {{ d.description }}
                    </p>
                    <a class="theme-btn" href="#"
                      >Read More<i class="far fa-arrow-right"></i
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
    name:'Blogs',
    data() {
    return {
      blog: [],
    };
  },
  methods: {
    getblog() {
      axios.get("api/blog").then((response) => {
        this.blog = response.data.data;
        // console.log(response.data.data);
      });
    },
    delete_blog(id) {
      axios.delete(`/api/blog/${id}`).then((response) => {
        this.blog = response.data.data;
        // console.log(response.data.data);
        this.getblog();
      });
    },
  },
  mounted() {
    this.getblog();
  },
}
</script>