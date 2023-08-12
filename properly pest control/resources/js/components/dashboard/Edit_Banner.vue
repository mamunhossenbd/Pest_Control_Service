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
                    <li class="active">/Edit Banner</li>
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
                      <h5 class="m-0">Edit Banner</h5>
                    </div>
                    <div class="card-body bg-dark">
                        <div action="">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-6">
                                        <div class="form-group">
                                            <label
                                                for="title"
                                                >Title</label
                                            >
                                            <input
                                                type="text"
                                                name="title"
                                                class="form-control"
                                                id="title"
                                                placeholder="title"
                                                v-model="title"
                                            />
                                        </div>

                                        <div class="form-group">
                                            <label
                                                for="description"
                                                >Description</label
                                            >
                                            <input
                                                type="text"
                                                name="description"
                                                class="form-control"
                                                id="description"
                                                placeholder="description"
                                                v-model="description"
                                            />
                                        </div>
                                        <div class="form-group">
                                            <label
                                                for="headline"
                                                >Headline</label
                                            >
                                            <input
                                                type="text"
                                                name="headline"
                                                class="form-control"
                                                id="headline"
                                                placeholder="headline"
                                                v-model="headline"
                                            />
                                        </div>
                                    </div>

                                    <div class="col-6">
                                        <div class="form-group">
                                            <label
                                                for="exampleInputFile"
                                                >Photo</label
                                            >
                                            <div
                                                class="input-group"
                                            >
                                                <div
                                                    class="custom-file"
                                                >
                                                    <input
                                                        type="file"
                                                        name="photo"
                                                        class="custom-file-input"
                                                        id="exampleInputFile"
                                                        @change="
                                                            fileHandle(
                                                                $event
                                                            )
                                                        "
                                                    />
                                                    <label
                                                        class="custom-file-label"
                                                        for="exampleInputFile"
                                                        >Choose
                                                        file</label
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
                                            <lable>.</lable>
                                            <input
                                            type="submit"
                                            class="btn btn-primary btn-block"
                                            value="Save"
                                            @click="
                                            submitData
                                            "
                                            />
                                        </div>
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
    name: "Edit_Banner",
    data() {
      return {
        banner: [],
        id:'',
        title: "",
        headline: "",
        description: "",
        file: "",
      };
    },
    methods: {
      edit_banner(id) {
        axios.get(`/api/banner/${id}`).then((response) => {
          this.title = response.data.data.title;
          this.headline = response.data.data.headline;
          this.description = response.data.data.description;
          this.file = response.data.data.photo;
          console.log(response.data.data);
        });
      },
      fileHandle(e) {
        this.file = e.target.files[0];
      },
      submitData() {
        let formData = new FormData();
        formData.append("title", this.title);
        formData.append("headline", this.headline);
        formData.append("description", this.description);
        formData.append("file", this.file);
        formData.append("_method", "PUT");

        axios
          .post(`/api/banner/${this.id}`, formData, {
            headers: {
              "Content-Type": "miltipart/from-data",
            },
          })
          .then((response) => {
            console.log(response.data.data);
            this.$router.push("/banner_list");
          });
      },
    },
    mounted() {
      const id = this.$route.params.id;
      this.id = id;
      this.edit_banner(id);
    },
  };
  </script>
