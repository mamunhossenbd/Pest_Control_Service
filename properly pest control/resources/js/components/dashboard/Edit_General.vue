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
                    <li class="active">/Edit General</li>
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
                      <h5 class="m-0">Edit General</h5>
                    </div>
                    <div class="card-body bg-dark">
                      <div action="">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-6">
                                    <div class="form-group">
                                        <label
                                            for="address"
                                            >Address</label
                                        >
                                        <input
                                            type="text"
                                            name="address"
                                            class="form-control"
                                            id="address"
                                            placeholder="Address"
                                            v-model="address"
                                        />
                                    </div>
                                    <div class="form-group">
                                        <label
                                            for="Phone"
                                            >Phone</label
                                        >
                                        <input
                                            type="text"
                                            name="phone"
                                            class="form-control"
                                            id="Phone"
                                            placeholder="Phone"
                                            v-model="phone"
                                        />
                                    </div>
                                    <div class="form-group">
                                        <label
                                            for="email"
                                            >Email</label
                                        >
                                        <input
                                            type="text"
                                            name="email"
                                            class="form-control"
                                            id="email"
                                            placeholder="Email"
                                            v-model="email"
                                        />
                                    </div>
                                </div>
                                
                                <div class="col-6">
                                    <div class="form-group">
                                        <label
                                            for="map"
                                            >Map</label
                                        >
                                        <input
                                            type="text"
                                            name="map"
                                            class="form-control"
                                            id="map"
                                            placeholder="map"
                                            v-model="map"
                                        />
                                    </div>
                                    <div class="form-group">
                                        <label
                                            for="exampleInputFile"
                                            >Logo</label
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
    name: "Edit_General",
    data() {
      return {
        general: [],
        id: "",
        phone: "",
        email: "",
        address: "",
        map: "",
        file: "",
      };
    },
    methods: {
      edit_general(id) {
        axios.get(`/api/general/${id}`).then((response) => {
          this.phone = response.data.data.phone;
          this.email = response.data.data.email;
          this.address = response.data.data.address;
          this.map = response.data.data.map;
          this.file = response.data.data.photo;
          console.log(response.data.data);
        });
      },
      fileHandle(e) {
        this.file = e.target.files[0];
      },
      submitData() {
        let formData = new FormData();
        formData.append("phone", this.phone);
        formData.append("email", this.email);
        formData.append("address", this.address);
        formData.append("map", this.map);
        formData.append("file", this.file);
        formData.append("_method", "PUT");
  
        axios
          .post(`/api/general/${this.id}`, formData, {
            headers: {
              "Content-Type": "miltipart/from-data",
            },
          })
          .then((response) => {
            console.log(response.data.data);
            this.$router.push("/general_list");
          });
      },
    },
    mounted() {
      const id = this.$route.params.id;
      this.id = id;
      this.edit_general(id);
    },
  };
  </script>
  