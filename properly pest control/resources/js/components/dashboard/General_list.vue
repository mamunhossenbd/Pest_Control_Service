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
                                    <li class="active">
                                            /General List
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <!-- /.container-fluid -->
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="card">
                        <div class="card-header bg-success">
                        <div class="row">
                            <div class="col-md-6">
                            <h3 class="card-header">General List</h3>
                            </div>
                            <div class="col-md-6">
                            <h2 class="card-title" style="padding-left: 70%">
                                <router-link to="d_general" class="btn btn-primary"
                                >Create General Information</router-link
                                >
                            </h2>
                            </div>
                        </div>
                        </div>
                      
                        <!-- /.card-header -->
                        <div class="card-body bg-dark">
                            <table class="table table-bordered table-responsive">
                                <tr>
                                    <th>SL</th>
                                    <th>Phone</th>
                                    <th>Email</th>
                                    <th>Address</th>
                                    <th>Map</th>
                                    <th>Photo</th>
                                    <th>Action</th>
                                </tr>
                                <tr v-for="(d, i) in general" :key="i">
                                    <td>{{ ++i }}</td>
                                    <td>{{ d.phone }}</td>
                                    <td>{{ d.emaol }}</td>
                                    <td>{{ d.address }}</td>
                                    <td>{{ d.map }}</td>

                                    <td>
                                        <img
                                            :src="`uploads/${d.photo}`"
                                            alt=""
                                            height="100"
                                            width="100"
                                        />
                                    </td>
                                    <td>
                                        <!-- <a href="" class="btn btn-primary"><i class="fa fa-edit"></i></a> -->
                                        <router-link
                                            :to="`/edit_general/${d.id}`"
                                            class="btn btn-primary"
                                            ><i class="fa fa-edit"></i
                                        ></router-link>
                                        <button
                                            type="submit"
                                            class="btn btn-danger"
                                            @click="delete_general(d.id)"
                                        >
                                            <i class="fas fa-trash"></i>
                                        </button>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </section>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->
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
    name: "General_list",
    data() {
        return {
            general: [],
        };
    },
    methods: {
        getgeneral() {
            axios.get("api/general").then((response) => {
                this.general = response.data.data;
                // console.log(response.data.data);
            });
        },
        delete_general(id) {
            axios.delete(`/api/general/${id}`).then((response) => {
                this.general = response.data.data;
                // console.log(response.data.data);
                this.getgeneral();
            });
        },
    },
    mounted() {
        this.getgeneral();
    },
};
</script>
