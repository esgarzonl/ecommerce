<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>
    
    <!-- Styles -->
    <script src='{{ url("/js/app.js") }}' ></script>
    <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudfare.com/ajax/libs/x-editable/1.5.0/bootstrap3-editable/css/bootstrap-editable.css"></script>
    


      <link rel="stylesheet" type="text/css" 
        href="https://fonts.googleapis.com/icon?family=Material+Icons"
        />
         <!-- Font Awesome -->
        <link
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
        rel="stylesheet"
        />
        <!-- Google Fonts -->
        <link
        href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
        rel="stylesheet"
        />
        <!-- MDB -->
        <link
        href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.3.1/mdb.min.css"
        rel="stylesheet"
        />
        
    <link href="{{url('/css/app.css')}}" rel="stylesheet">
    
  

    <!-- Scripts -->
    <script src='{{ url("/js/app.js") }}' ></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/x-editable/1.5.0/bootstrap3-editable/js/bootstrap-editable.min.js"></script>
    <script>
        window.Laravel = <?php echo json_encode([
            'csrfToken' => csrf_token(),
        ]); ?>
    </script>
    <script src='{{ url("/js/app.js") }}' ></script>
    
</head>
<body>
    <div id="app">
    <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
            <div class="container">
                
                    <!-- Branding Image -->
                    
                    

                <div class="collapse navbar-collapse" id="app-navbar-collapse">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav me-auto">
                    <a class="nav-link" href="{{ url('/') }}">
                        BagShop
                    </a>
                    <a class="nav-link" href="{{ url('/products') }}">
                          Productos
                          </a>
                        &nbsp;
                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="nav navbar-nav navbar-right ms-auto">
                        <!-- Authentication Links -->
                        
                        <li  class="nav-item">
                          
                          <a class="nav-link" href="{{url('/carrito')}}">
                              Mi carrito {{$productsCount}}
                          </a>
                        </li>
                        @if (Auth::guest())
                            <li><a class="nav-link" href="{{ url('/login') }}">Login</a></li>
                            <li><a class="nav-link" href="{{ url('/register') }}">Register</a></li>
                        @else
                             <li  class="nav-item">
                                <a class="nav-link" href="{{ route('logout')}}"
                                    onclick="event.preventDefault();
                                    document.getElementById('logout-form').submit();">
                                    Logout
                                </a>

                                <form id="logout-form" action="{{ route('logout') }}"
                                method="POST" style="display: none;">
                                {{csrf_field()}}
                                </form>
                            </li>
                        @endif
                    </ul>
                </div>
            </div>
        </nav>


       

        @yield('content')
    </div>

    <!-- Scripts -->
    
    <script src="//cdnjs.cloudflare.com/ajax/libs/x-editable/1.5.0/bootstrap3-editable/js/bootstrap-editable.min.js"></script>
    
    <script  type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.3.1/mdb.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/x-editable/1.5.0/bootstrap3-editable/js/bootstrap-editable.min.js"></script>
    <script>
        $.material.init();
    </script>
    
    <script src='{{ url("/js/app.js") }}' ></script>
    
</body>
 <!-- Footer -->
 <footer class="text-center text-lg-start bg-white text-muted">
        <!-- Section: Social media -->
        <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
          <!-- Left -->
          <div class="me-5 d-none d-lg-block">
            <span>Siguenos en nuestras redes sociales:</span>
          </div>
          <!-- Left -->

          <!-- Right -->
          <div>
            <a href="" class="me-4 text-reset">
              <i class="fab fa-facebook-f"></i>
            </a>
            <a href="" class="me-4 text-reset">
              <i class="fab fa-twitter"></i>
            </a>
            <a href="" class="me-4 text-reset">
              <i class="fab fa-google"></i>
            </a>
            <a href="" class="me-4 text-reset">
              <i class="fab fa-instagram"></i>
            </a>
            <a href="" class="me-4 text-reset">
              <i class="fab fa-linkedin"></i>
            </a>
            <a href="" class="me-4 text-reset">
              <i class="fab fa-github"></i>
            </a>
          </div>
          <!-- Right -->
        </section>
        <!-- Section: Social media -->

        <!-- Section: Links  -->
        <section class="">
          <div class="container text-center text-md-start mt-5">
            <!-- Grid row -->
            <div class="row mt-3">
              <!-- Grid column -->
              <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                <!-- Content -->
                <h6 class="text-uppercase fw-bold mb-4">
                  <i class="fas fa-suitcase-rolling me-3"></i>BagShop
                </h6>
                <p>
                  Desarrollado por: EDWIN GARZÓN <br><br> Para nosotros es un honor brindarte el mejor servicio y calidad al mejor precio del mercado.
                  Cualquier duda o inquietud que tengas, no dudes en contactarnos.
                </p>
              </div>
              <!-- Grid column -->

              <!-- Grid column -->
              <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                <!-- Links -->
                <h6 class="text-uppercase fw-bold mb-4">
                  Maletas
                </h6>
                <p>
                  <a href="#!" class="text-reset">De viaje</a>
                </p>
                <p>
                  <a href="#!" class="text-reset">De mano</a>
                </p>
                <p>
                  <a href="#!" class="text-reset">Maleteros</a>
                </p>
                <p>
                  <a href="#!" class="text-reset">Mochilas</a>
                </p>
              </div>
              <!-- Grid column -->

           

              <!-- Grid column -->
              <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                <!-- Links -->
                <h6 class="text-uppercase fw-bold mb-4">Contacto</h6>
                <p><i class="fas fa-home me-3"></i> Bogotá, Bogotá D.C, CO</p>
                <p>
                  <i class="fas fa-envelope me-3"></i>
                  correo@gmail.com
                </p>
                <p><i class="fas fa-phone me-3"></i> + 57 313 567 8885</p>
                <p><i class="fas fa-print me-3"></i> + 57 320 567 8185</p>
              </div>
              <!-- Grid column -->
            </div>
            <!-- Grid row -->
          </div>
        </section>
        <!-- Section: Links  -->

        <!-- Copyright -->
        <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
          © 2023 Copyright:
          <a class="text-reset fw-bold" href="#">BagShop.com</a>
        </div>
        <!-- Copyright -->
      </footer>
      <!-- Footer -->
</html>
