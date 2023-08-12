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
                <section class="content-header text-info ">
                    <div class="container-fluid ">
                        <div class="row mb-2 ">
                            <div class="col-sm-6 ">
                                <h1 class="text-primary">Stater Page</h1>
                            </div>
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item">
                                        <a href="#">Home</a>
                                    </li>
                                    <li class="active">
                                            /Appointment List
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
                            <h3 class="card-title">Appointment List</h3>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body bg-dark">
                            <table class="table table-bordered">
                                <tr>
                                    <th>SL</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Phone</th>
                                    <th>Service</th>
                                    <th>Action</th>
                                </tr>
                                <tr v-for="(d, i) in appointment" :key="i">
                                    <td>{{ ++i }}</td>
                                    <td>{{ d.name }}</td>
                                    <td>{{ d.email }}</td>
                                    <td>{{ d.phone }}</td>
                                    <td>{{ d.service }}</td>

                                    <td>
                                 
                                        <button
                                            type="submit"
                                            class="btn btn-danger"
                                            @click="delete_appointment(d.id)"
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
    name: "Appointment_list",
    data() {
        return {
            appointment: [],
            id:'',
        };
    },
    methods: {
        getappointment() {
            axios.get("api/appointment").then((response) => {
                this.appointment = response.data.data;
                // console.log(response.data.data);
            });
        },
        delete_appointment(id) {
            axios.delete(`/api/appointment/${id}`).then((response) => {
                this.appointment = response.data.data;
                // console.log(response.data.data);
                this.getappointment();
            });
        },
    },
    mounted() {
        this.getappointment();
    },
};
</script>
