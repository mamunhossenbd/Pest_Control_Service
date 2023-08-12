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
                  <li class="active">/Edit About</li>
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
                    <h5 class="m-0">Edit About</h5>
                  </div>
                  <div class="card-body bg-dark">
                    <div action="">
                      <div class="card-body">
                        <div class="row">
                          <div class="col-6">
                            <div class="form-group">
                              <label for="title">Title</label>
                              <input
                                type="text"
                                name="title"
                                class="form-control"
                                id="title"
                                v-model="title"
                              />
                            </div>
                            <div class="form-group">
                              <label for="description">Description</label>
                              <input
                                type="text"
                                name="title"
                                class="form-control"
                                id="description"
                                v-model="description"
                              />
                            </div>
                            <div class="form-group">
                              <label for="year">Years Of Experience</label>
                              <input
                                type="number"
                                name="year"
                                class="form-control"
                                id="Years Of Experiencer"
                                v-model="year"
                              />
                            </div>
                          </div>
                          <div class="col-6">
                            <div class="form-group">
                              <label for="exampleInputFile">Photo</label>
                              <div class="input-group">
                                <div class="custom-file">
                                  <input
                                    type="file"
                                    name="photo"
                                    class="custom-file-input"
                                    id="exampleInputFile"
                                    @change="fileHandle($event)"
                                  />
                                  <label
                                    class="custom-file-label"
                                    for="exampleInputFile"
                                    >Choose file</label
                                  >
                                </div>
                              </div>
                            </div>
                            <div class="form-group">
                              <img
                                :src="`/uploads/${file}`"
                                alt=""
                                style="height: 75px; width: 150px"
                              />
                            </div>
                            <div class="form-group">
                              <label for="blpoint">Bulet point</label>
                              <input
                                type="text"
                                name="blpoint"
                                class="form-control"
                                id="blpoint"
                                v-model="blpoint"
                              />
                            </div>
                          </div>
                          <div class="form-group">
                            <input
                              type="submit"
                              class="btn btn-primary btn-block"
                              value="Update"
                              @click="submitData"
                            />
                          </div>
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
  name: "Edit_About",
  data() {
    return {
      about: [],
      title: "",
      description: "",
      file: "",
      year: "",
      blpoint: "",
    };
  },
  methods: {
    edit_about(id) {
      axios.get(`/api/about_list/${id}`).then((response) => {
        this.title = response.data.data.title;
        this.description = response.data.data.description;
        this.year = response.data.data.year;
        this.blpoint = response.data.data.blpoint;
        this.file = response.data.data.photo;
        console.log(response.data.data);
      });
    },
    //update
    fileHandle(e) {
      this.file = e.target.files[0];
    },
    submitData() {
      let formData = new FormData();
      formData.append("title", this.title);
      formData.append("file", this.file);
      formData.append("description", this.description);
      formData.append("year", this.year);
      formData.append("blpoint", this.blpoint);
      formData.append("_method", "PUT");

      axios
        .post(`/api/about_list/${this.id}`, formData, {
          headers: {
            "content-Type": "multipart/form-data",
          },
        })
        .then((response) => {
          this.$router.push("/about_list");
        });
    },
  },
  mounted() {
    const id = this.$route.params.id;
    this.id = id;
    this.edit_about(id);
  },
};
</script>
