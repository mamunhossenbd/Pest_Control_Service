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
                                            /Team List
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
                                <h3 class="card-header">Team List</h3>
                                </div>
                                <div class="col-md-6">
                                <h2 class="card-title" style="padding-left: 70%">
                                    <router-link to="d_team" class="btn btn-primary"
                                    >Create Team</router-link
                                    >
                                </h2>
                                </div>
                            </div>
                        </div>
                       
                        <!-- /.card-header -->
                        <div class="card-body bg-dark">
                            <table class="table table-bordered">
                                <tr>
                                    <th>SL</th>
                                    <th>Name</th>
                                    <th>Designation</th>
                                    <th>Photo</th>
                                    <th>Action</th>
                                </tr>
                                <tr v-for="(d, i) in team" :key="i">
                                    <td>{{ ++i }}</td>
                                    <td>{{ d.name }}</td>
                                    <td>{{ d.designation }}</td>

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
                                            :to="`/edit_team/${d.id}`"
                                            class="btn btn-primary"
                                            ><i class="fa fa-edit"></i
                                        ></router-link>
                                        <button
                                            type="submit"
                                            class="btn btn-danger"
                                            @click="delete_team(d.id)"
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
    name: "Team_list",
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
};
</script>
