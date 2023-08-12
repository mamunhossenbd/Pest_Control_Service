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
      <Menu></Menu>

      <main class="main">
        <div
          class="site-breadcrumb"
          style="background: url(frontend/img/breadcrumb/breadcrumb.jpg)"
        >
          <div class="container">
            <h2 class="breadcrumb-title">Pricing Plan</h2>
            <ul class="breadcrumb-menu">
              <li>
                <router-link to="/"
                  ><i class="far fa-home"></i> Home</router-link
                >
              </li>
              <li class="active">Pricing Plan</li>
            </ul>
          </div>
        </div>

        <div class="pricing-area py-120">
          <div class="container">
            <div class="row g-5">
              <div class="col-md-6 col-lg-4">
                <div class="pricing-item">
                  <div class="pricing-header">
                    <h5>Basic</h5>
                  </div>
                  <div class="pricing-amount">
                    <strong>TK:2000</strong>
                  </div>
                  <div class="pricing-amount-type">
                    <span>One Time Payment</span>
                  </div>
                  <div class="pricing-feature">
                    <ul>
                      <li><i class="far fa-check"></i> Rodent Control</li>
                      <li><i class="far fa-check"></i> Termite Control</li>
                      <li><i class="far fa-check"></i> Mosquito Reduction</li>
                      <li><i class="far fa-check"></i> Cockroach Control</li>
                      <li><i class="far fa-check"></i> Bed Bug Control</li>
                    </ul>
                  </div>
                  <div class="pricing-footer">
                    <router-link to="/contact" class="theme-btn"
                      >Contact Us<i class="far fa-arrow-right"></i
                    ></router-link>

                    <router-link to="" class="theme-btn theme-btn2">
                      <i class="far fa-phone"></i>Phone Call Us<i
                        class="far fa-arrow-right"
                      >
                        01712129322</i
                      ></router-link
                    >
                  </div>
                </div>
              </div>
              <div class="col-md-6 col-lg-4">
                <div class="pricing-item">
                  <div class="pricing-header">
                    <h5>Standard</h5>
                  </div>
                  <div class="pricing-amount">
                    <strong>TK:2500</strong>
                  </div>
                  <div class="pricing-amount-type">
                    <span>One Time Payment</span>
                  </div>
                  <div class="pricing-feature">
                    <ul>
                      <li><i class="far fa-check"></i> Rodent Control</li>
                      <li><i class="far fa-check"></i> Termite Control</li>
                      <li><i class="far fa-check"></i> Mosquito Reduction</li>
                      <li><i class="far fa-check"></i> Cockroach Control</li>
                      <li><i class="far fa-check"></i> Bed Bug Control</li>
                    </ul>
                  </div>
                  <div class="pricing-footer">
                    <router-link to="/contact" class="theme-btn"
                      >Contact Us<i class="far fa-arrow-right"></i
                    ></router-link>

                    <router-link to="" class="theme-btn theme-btn2">
                      <i class="far fa-phone"></i>Phone Call Us<i
                        class="far fa-arrow-right"
                      >
                        01712129322</i
                      ></router-link
                    >
                  </div>
                </div>
              </div>
              <div class="col-md-6 col-lg-4">
                <div class="pricing-item">
                  <div class="pricing-header">
                    <h5>Premium</h5>
                  </div>
                  <div class="pricing-amount">
                    <strong>TK:3000</strong>
                  </div>
                  <div class="pricing-amount-type">
                    <span>One Time Payment</span>
                  </div>
                  <div class="pricing-feature">
                    <ul>
                      <li><i class="far fa-check"></i> Rodent Control</li>
                      <li><i class="far fa-check"></i> Termite Control</li>
                      <li><i class="far fa-check"></i> Mosquito Reduction</li>
                      <li><i class="far fa-check"></i> Cockroach Control</li>
                      <li><i class="far fa-check"></i> Bed Bug Control</li>
                    </ul>
                  </div>
                  <div class="pricing-footer">
                    <router-link to="/contact" class="theme-btn"
                      >Contact Us<i class="far fa-arrow-right"></i
                    ></router-link>

                    <router-link to="" class="theme-btn theme-btn2">
                      <i class="far fa-phone"></i>Phone Call Us<i
                        class="far fa-arrow-right"
                      >
                        01712129322</i
                      ></router-link
                    >
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </main>

      <!-- STATS Footer-area -->
      <Footer></Footer>
      <!-- END Footer-area -->

      <a href="#" id="scroll-top"><i class="far fa-long-arrow-up"></i></a>
    </body>
  </html>
</template>
    <script>
import Menu from "./frontend_layout/Menu.vue";
import Footer from "./frontend_layout/Footer.vue";
export default {
  name: "Pricing",
  components: { Menu, Footer },
};
</script>

