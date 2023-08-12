<template>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>AdminLTE</title>
  </head>

  <body class="hold-transition sidebar-mini">
    <div class="wrapper">
      <!-- header -->
      <Header></Header>
      <!-- /.endheader -->

      <!-- Main Sidebar Container -->
      <Menu></Menu>

      <!-- end menu -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <div class="container-fluid">
            <div class="row mb-2">
              <div class="col-sm-6">
                <h1 class="text-primary">Stater Page</h1>
              </div>
              <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                  <li class="breadcrumb-item">
                    <a href="#">Home</a>
                  </li>
                  <li class="active">/Edit Social Link</li>
                </ol>
              </div>
            </div>
          </div>
          <!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <div class="content">
          <div class="container-fluid">
            <div class="row">
              <div class="col-lg-12">
                <div class="card card-primary card-outline">
                  <div class="card-header bg-success">
                    <h5 class="m-0">Edit Social Link</h5>
                  </div>
                  <div class="card-body bg-dark">
                    <div action="">
                      <div class="card-body">
                        <div class="row">
                          <div class="col-6">
                            <div class="form-group">
                              <label for="facebook">Facebook</label>
                              <input
                                type="text"
                                name="facebook"
                                class="form-control"
                                id="facebook"
                                placeholder="facebook"
                                v-model="facebook"
                              />
                            </div>

                            <div class="form-group">
                              <label for="twitter">Twitter</label>
                              <input
                                type="text"
                                name="twitter"
                                class="form-control"
                                id="twitter"
                                placeholder="twitter"
                                v-model="twitter"
                              />
                            </div>

                            <div class="form-group">
                              <label for="instagram">Instagram</label>
                              <input
                                type="text"
                                name="instagram"
                                class="form-control"
                                id="instagram"
                                placeholder="instagram"
                                v-model="instagram"
                              />
                            </div>
                          </div>

                          <div class="col-6">
                            <div class="form-group">
                              <label for="linkedin">Linkedin</label>
                              <input
                                type="text"
                                name="linkedin"
                                class="form-control"
                                id="linkedin"
                                placeholder="linkedin"
                                v-model="linkedin"
                              />
                            </div>

                            <div class="form-group">
                              <label for="whatsapp">Whatsapp</label>
                              <input
                                type="text"
                                name="whatsapp"
                                class="form-control"
                                id="whatsapp"
                                placeholder="whatsapp"
                                v-model="whatsapp"
                              />
                            </div>

                            <div class="form-group">
                              <label for="youtube">Youtube</label>
                              <input
                                type="text"
                                name="youtube"
                                class="form-control"
                                id="youtube"
                                placeholder="youtube"
                                v-model="youtube"
                              />
                            </div>
                          </div>
                        </div>
                        <div class="form-group">
                            <input
                            type="submit"
                            class="btn btn-primary btn-block"
                            value="Save"
                            @click="submitData"
                            />
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- /.col-md-6 -->
            </div>
          </div>
        </div>
      </div>

      <Footer></Footer>
    </div>
  </body>
</template>
      <script>
import axios from "axios";
import Header from "../admin/Header.vue";
import Menu from "../admin/Menu.vue";
import Footer from "../admin/Footer.vue";
export default {
  components: { Menu, Header, Footer },
  name: "Edit_social",
  data() {
    return {
      social: [],
      facebook: "",
      twitter: "",
      instagram: "",
      linkedin: "",
      whatsapp: "",
      youtube: "",
    };;
  },
  methods: {
    edit_social(id) {
      axios.get(`/api/social/${id}`).then((response) => {
        this.facebook = response.data.data.facebook;
        this.twitter = response.data.data.twitter;
        this.instagram = response.data.data.instagram;
        this.linkedin = response.data.data.linkedin;
        this.whatsapp = response.data.data.whatsapp;
        this.youtube = response.data.data.youtube;
        console.log(response.data.data);
      });
    },
    fileHandle(e) {
      this.file = e.target.files[0];
    },
    submitData() {
        let formData = new FormData();
      formData.append("facebook", this.facebook);
      formData.append("twitter", this.twitter);
      formData.append("instagram", this.instagram);
      formData.append("linkedin", this.linkedin);
      formData.append("linkedin", this.linkedin);
      formData.append("whatsapp", this.whatsapp);
      formData.append("whatsapp", this.whatsapp);
      formData.append("youtube", this.youtube);
      formData.append("_method", "PUT");

      axios
        .post(`/api/social/${this.id}`, formData, {
          headers: {
            "Content-Type": "miltipart/from-data",
          },
        })
        .then((response) => {
          console.log(response.data.data);
          this.$router.push("/social_list");
        });
    },
  },
  mounted() {
    const id = this.$route.params.id;
    this.id = id;
    this.edit_social(id);
  },
};
</script>
