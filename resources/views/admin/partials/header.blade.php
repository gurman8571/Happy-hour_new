<div class="wrapper">

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
     
    </ul>

   
    
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="{{route('admin-dashboard')}}" class="brand-link">
      <img src="{{url('assets/adminlte/dist/img/AdminLTELogo.png')}}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">Happy Hours</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        
        <div class="info">
          <a href="#" class="d-block">Welcome Admin</a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
         
			<li class="nav-item">
			  <a href="{{url('admin-dashboard')}}" class="nav-link">
			   <p>Dashboard</p>
			  </a>
			</li>
			
			
			<li class="nav-item">
			  <a href="{{url('users')}}" class="nav-link">
			   <p>Users</p>
			  </a>
			</li>
			
			
			<li class="nav-item">
			  <a href="{{url('category')}}" class="nav-link">
			   <p>Categories</p>
			  </a>
			</li>
			<li class="nav-item">
			  <a href="{{url('places')}}" class="nav-link">
			   <p>Places</p>
			  </a>
			</li>
			
			<li class="nav-item">
			  <a href="{{url('logout')}}" class="nav-link">
			   <p>Log Out</p>
			  </a>
			</li>
         
          
         
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>