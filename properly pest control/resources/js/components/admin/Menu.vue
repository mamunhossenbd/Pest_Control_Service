<template>
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <router-link to="/dashboard" class="brand-link">
      <img
        src="/admin/dist/img/AdminLTELogo.png"
        alt="AdminLTE Logo"
        class="brand-image img-circle elevation-3"
        style="opacity: 0.8"
      />
      <span class="brand-text font-weight-light">Admin Panel</span>
    </router-link>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img
            src="/admin/dist/img/user2-160x160.jpg"
            class="img-circle elevation-2"
            alt="User Image"
          />
        </div>
        <div class="info">
          <!-- <a href="#" class="d-block">{{ $store.state.auth.user.name }}</a> -->
          <a href="#" class="d-block">Arju Sikder</a>
        </div>
      </div>

      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input
            class="form-control form-control-sidebar"
            type="search"
            placeholder="Search"
            aria-label="Search"
          />
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul
          class="nav nav-pills nav-sidebar flex-column"
          data-widget="treeview"
          role="menu"
          data-accordion="false"
        >
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item menu-open">
            <a href="#" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
          </li>

          <li class="nav-item">
            <router-link to="/appointment_list" class="nav-link">
              <i class="fa fa-address-book" aria-hidden="true"></i>
              <p style="padding-left: 10px">Appointment List</p>
            </router-link>
          </li>

          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
                General Information
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <router-link to="/general_list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>General Information List</p>
                </router-link>
              </li>
              <li class="nav-item">
                <router-link to="d_general" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Create General Information</p>
                </router-link>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
                Banner
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <router-link to="/banner_list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Banner List</p>
                </router-link>
              </li>
              <li class="nav-item">
                <router-link to="d_banner" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Create Banner</p>
                </router-link>
              </li>
            </ul>
          </li>

          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
                About
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <router-link to="/about_list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>About List</p>
                </router-link>
              </li>
              <li class="nav-item">
                <router-link to="d_about" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Create About</p>
                </router-link>
              </li>
            </ul>
          </li>

          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
                Blog
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <router-link to="/blog_list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Blog List</p>
                </router-link>
              </li>
              <li class="nav-item">
                <router-link to="d_blog" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Create Blog</p>
                </router-link>
              </li>
            </ul>
          </li>

          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
                Pest
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <router-link to="/pest_list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Pest List</p>
                </router-link>
              </li>
              <li class="nav-item">
                <router-link to="d_pest" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Create Pest</p>
                </router-link>
              </li>
            </ul>
          </li>

          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
                Service
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <router-link to="/service_list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Service List</p>
                </router-link>
              </li>
              <li class="nav-item">
                <router-link to="d_service" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Create Service</p>
                </router-link>
              </li>
            </ul>
          </li>

          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
                Project
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <router-link to="/project_list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Project List</p>
                </router-link>
              </li>
              <li class="nav-item">
                <router-link to="d_project" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Create Project</p>
                </router-link>
              </li>
            </ul>
          </li>

          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
                Team
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <router-link to="/team_list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Team List</p>
                </router-link>
              </li>
              <li class="nav-item">
                <router-link to="d_team" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Create Team</p>
                </router-link>
              </li>
            </ul>
          </li>

          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
                Client
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <router-link to="/client_list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Client List</p>
                </router-link>
              </li>
              <li class="nav-item">
                <router-link to="d_client" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Create Client</p>
                </router-link>
              </li>
            </ul>
          </li>

          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
                Testimonial
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <router-link to="/testimonial_list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Testimonial List</p>
                </router-link>
              </li>
              <li class="nav-item">
                <router-link to="d_testimonial" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Create Testimonial</p>
                </router-link>
              </li>
            </ul>
          </li>

          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
                Social Media Link
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <router-link to="/social_list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Social Media List</p>
                </router-link>
              </li>
              <li class="nav-item">
                <router-link to="d_social" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Create Social Media Link</p>
                </router-link>
              </li>
            </ul>
          </li>

          <li class="nav-item">
            <router-link to="/contact_list" class="nav-link">
              <i class="fa fa-phone" aria-hidden="true"></i>
              <p style="padding-left: 10px">Contact List</p>
            </router-link>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="javascript:void(0)" @click="logout">
              <i class="far fa-circle nav-icon"></i>
              <p>Logout</p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
  <main class="mt-3">
    <router-view></router-view>
  </main>
</template>

<script>
import { mapActions } from "vuex";
export default {
  name: "Menu",
  data() {
    return {};
  },
  methods: {
    ...mapActions({
      signout: "auth/logout",
    }),
    logout() {
      this.signout();
    },
  },
};
</script>
