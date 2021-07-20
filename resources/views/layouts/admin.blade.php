
 <!DOCTYPE html>
 <html>
 
 <head>
     <meta charset="utf-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <title>MCQ | Admin</title>
     <meta name="viewport" content="width=device-width, initial-scale=1">
     <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
     <link rel="stylesheet" href="{{ asset('assets/admin_panel/style.css') }}">
     <link rel="stylesheet" href="{{ asset('assets/admin_panel/plugins/fontawesome-free/css/all.min.css') }}">
     <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
     <link rel="stylesheet"
         href="{{ asset('assets/admin_panel/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css') }}">
     <link rel="stylesheet" href="{{ asset('assets/admin_panel/plugins/icheck-bootstrap/icheck-bootstrap.min.css') }}">
     <link rel="stylesheet" href="{{ asset('assets/admin_panel/plugins/jqvmap/jqvmap.min.css') }}">
     <link rel="stylesheet" href="{{ asset('assets/admin_panel/dist/css/adminlte.min.css') }}">
     <link rel="stylesheet"
         href="{{ asset('assets/admin_panel/plugins/overlayScrollbars/css/OverlayScrollbars.min.css') }}">
     <link rel="stylesheet" href="{{ asset('assets/admin_panel/plugins/daterangepicker/daterangepicker.css') }}">
     <link rel="stylesheet" href="{{ asset('assets/admin_panel/plugins/summernote/summernote-bs4.css') }}">
     <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
     <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
     <link rel="stylesheet" href="{{ asset('assets/admin_panel/notiflix/notiflix-2.6.0.min.css') }}">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
     <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-tokenfield/0.12.0/css/bootstrap-tokenfield.min.css">
 
     <link rel="stylesheet" href="{{ asset('assets/admin_panel/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css') }}">
     <link rel="stylesheet" href="{{ asset('assets/admin_panel/plugins/datatables-responsive/css/responsive.bootstrap4.min.css') }}">
     <link rel="stylesheet" href="{{ asset('assets/admin_panel/plugins/datatables-buttons/css/buttons.bootstrap4.min.css') }}">
     @yield('head')
 </head>
 
 <body class="hold-transition sidebar-mini layout-fixed">
     <div class="wrapper">
         <nav class="main-header navbar navbar-expand navbar-white navbar-light">
             <ul class="navbar-nav">
                 <li class="nav-item">
                     <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
                 </li>
                 {{-- <li class="nav-item d-none d-sm-inline-block">
                     <a href="index.php" class="nav-link">Home</a>
                 </li>
                 <li class="nav-item d-none d-sm-inline-block">
                     <a href="#" class="nav-link">Contact</a>
                 </li> --}}
             </ul>
             <a href="{{ route('admin.logout') }}" style="margin-left:90%;color:white" class="btn btn-danger">Log Out</a>
             {{-- <form class="form-inline ml-3">
                 <div class="input-group input-group-sm">
                     <input class="form-control form-control-navbar" type="search" placeholder="Search"
                         aria-label="Search">
                     <div class="input-group-append">
                         <button class="btn btn-navbar" type="submit">
                             <i class="fas fa-search"></i>
                         </button>
                     </div>
                 </div>
             </form> --}}
         </nav>
         <aside class="main-sidebar sidebar-dark-primary elevation-4">
             <a href="index.php" class="brand-link">
                 <img src="{{ asset('assets/admin_panel/dist/img/AdminLTELogo.png') }}" alt="AdminLTE Logo"
                     class="brand-image img-circle elevation-3" style="opacity: .8">
                 <span class="brand-text font-weight-light"> MCQ</span>
             </a>
             <div class="sidebar">
                 <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                     <div class="image">
                         <img src="{{ asset('assets/admin_panel/dist/img/user2-160x160.jpg') }}"
                             class="img-circle elevation-2" alt="User Image">
                     </div>
                     <div class="info">
                         <a href="#" class="d-block">Super Admin</a>
                     </div>
                 </div>
                 <nav class="mt-2">
                     <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                         data-accordion="false">
                         <li class="nav-item has-treeview">
                             <a href="{{ route('admin.dashboard') }}"
                                 class="nav-link {{ Request::fullUrl('admin.dashboard') == route('admin.dashboard') ? 'active' : '' }}">
                                 <i class="fa fa-tachometer" aria-hidden="true"></i>
                                 <p>
                                     Dashboard
                                     <i class="fas fa-angle-left right"></i>
                                 </p>
                             </a>
                         </li>

                          <li class="nav-item has-treeview">
                             <a href="{{ route('admin.users') }}"
                                 class="nav-link {{ Request::fullUrl('admin.users') == route('admin.users') ? 'active' : '' }}">
                                 <i class="fa fa-tachometer" aria-hidden="true"></i>
                                 <p>
                                     Users
                                     <i class="fas fa-angle-left right"></i>
                                 </p>
                             </a>
                         </li>
                 
                        
                     </ul>
                 </nav>
             </div>
         </aside>
 
         @yield('content')
 
 
 
 
         <footer class="main-footer">
             <strong>Copyright &copy; 2020 <a href="">MCQ</a>.</strong>
             All rights reserved.
             <div class="float-right d-none d-sm-inline-block">
                 <b>Version</b> 3.0.2
             </div>
         </footer>
         <aside class="control-sidebar control-sidebar-dark">
 
         </aside>
     </div>
 
 
     {{-- <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
     <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script> --}}
     <script src="{{ asset('assets/admin_panel/plugins/jquery/jquery.min.js') }}"></script>
 
     <script src="{{ asset('assets/admin_panel/plugins/jquery-ui/jquery-ui.min.js') }}"></script>
 
     {{-- <script>
         $.widget.bridge('uibutton', $.ui.button)
     </script> --}}
     <script src="{{ asset('assets/admin_panel/plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
     <script src="{{ asset('assets/admin_panel/plugins/chart.js/Chart.min.js') }}"></script>
     <script src="{{ asset('assets/admin_panel/plugins/sparklines/sparkline.js') }}"></script>
     <script src="{{ asset('assets/admin_panel/plugins/jqvmap/jquery.vmap.min.js') }}"></script>
     <script src="{{ asset('assets/admin_panel/plugins/jqvmap/maps/jquery.vmap.usa.js') }}"></script>
     <script src="{{ asset('assets/admin_panel/plugins/jquery-knob/jquery.knob.min.js') }}"></script>
     <script src="{{ asset('assets/admin_panel/plugins/moment/moment.min.js') }}"></script>
     <script src="{{ asset('assets/admin_panel/plugins/daterangepicker/daterangepicker.js') }}"></script>
     <script
         src="{{ asset('assets/admin_panel/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js') }}">
     </script>
     <script src="{{ asset('assets/admin_panel/plugins/summernote/summernote-bs4.min.js') }}"></script>
     <script src="{{ asset('assets/admin_panel/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js') }}">
     </script>
     <script src="{{ asset('assets/admin_panel/dist/js/adminlte.js') }}"></script>
     <script src="{{ asset('assets/admin_panel/dist/js/pages/dashboard.js') }}"></script>
     <script src="{{ asset('assets/admin_panel/dist/js/demo.js') }}"></script>
     <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
     <script src="{{ asset('assets/admin_panel/notiflix/notiflix-2.6.0.min.js') }}"></script>
     <script src="{{ asset('assets/admin_panel/notiflix/notiflix-aio-2.6.0.min.js') }}"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-tokenfield/0.12.0/bootstrap-tokenfield.js"></script>
     <script src="https://cdn.ckeditor.com/4.16.0/standard/ckeditor.js"></script>
 
     <script src="{{ asset('assets/admin_panel/plugins/datatables/jquery.dataTables.min.js') }}"></script>
     <script src="{{ asset('assets/admin_panel/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js') }}"></script>
     <script src="{{ asset('assets/admin_panel/plugins/datatables-responsive/js/dataTables.responsive.min.js') }}"></script>
     <script src="{{ asset('assets/admin_panel/plugins/datatables-responsive/js/responsive.bootstrap4.min.js') }}"></script>
     <script src="{{ asset('assets/admin_panel/plugins/datatables-buttons/js/dataTables.buttons.min.js') }}"></script>
     <script src="{{ asset('assets/admin_panel/plugins/datatables-buttons/js/buttons.bootstrap4.min.js') }}"></script>
     <script src="{{ asset('assets/admin_panel/plugins/jszip/jszip.min.js') }}"></script>
     <script src="{{ asset('assets/admin_panel/plugins/pdfmake/pdfmake.min.js') }}"></script>
     <script src="{{ asset('assets/admin_panel/plugins/pdfmake/vfs_fonts.js') }}"></script>
     <script src="{{ asset('assets/admin_panel/plugins/datatables-buttons/js/buttons.html5.min.js') }}"></script>
     <script src="{{ asset('assets/admin_panel/plugins/datatables-buttons/js/buttons.print.min.js') }}"></script>
     <script src="{{ asset('assets/admin_panel/plugins/datatables-buttons/js/buttons.colVis.min.js') }}"></script>
     @yield('scripts')
 </body>
 
 </html>