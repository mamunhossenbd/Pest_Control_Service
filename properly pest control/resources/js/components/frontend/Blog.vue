<template>
  <!DOCTYPE html>
  <html lang="en">
    <head>
      <meta charset="UTF-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <meta name="description" content />
      <meta name="keywords" content />

      <title>Properly - Pest Control Services</title>
    </head>
    <body>
        <!-- STATS Menu-area -->
        <Menu></Menu>
        <!-- END Menu-area -->

      <main class="main">
        <div
          class="site-breadcrumb"
          style="background: url(frontend/img/breadcrumb/breadcrumb.jpg)"
        >
          <div class="container">
            <h2 class="breadcrumb-title">Our Blog</h2>
            <ul class="breadcrumb-menu">
              <li>
                <router-link to="/"><i class="far fa-home"></i> Home</router-link>
              </li>
              <li class="active">Our Blog</li>
            </ul>
          </div>
        </div>

         <!-- STATS blog-area -->
         <Blogs></Blogs>
        <!-- END blog-area -->
      </main>

    <!-- STATS Footer-area -->
     <Footer></Footer>
    <!-- END Footer-area -->

      <a href="#" id="scroll-top"><i class="far fa-long-arrow-up"></i></a>
    </body>
  </html>
</template>
      <script>
       import Menu from './frontend_layout/Menu.vue'
    import Footer from './frontend_layout/Footer.vue'
    import Blogs from './frontend_layout/Blogs.vue'
export default {
  name: "Blog",
  components:{Menu,Footer,Blogs}
};
</script>
