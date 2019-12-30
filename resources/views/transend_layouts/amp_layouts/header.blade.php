<header class="header-area">
        <div class="top-header-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="top-header-content d-flex align-items-center">
                            <div class="login-search-area d-flex align-items-center">
                                <div class="login d-flex">
                                    <a href="#">Login</a>
                                    <a href="#">Register</a>
                                </div>
                                <div class="search-form">
                                    <form method="post" action-xhr="#" target="_blank">
                                        <input type="search" name="search" class="form-control" placeholder="Search">
                                        <button type="submit"><amp-img src="{{ URL::to('images/search.png') }}" alt="search" width="18" height="20" layout="responsive" sizes="(min-width: 569px) 15px, 15px"></amp-img></button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Navbar Area -->
        <div id="stickyMenu-sticky-wrapper" class="sticky-wrapper" style="height: 80px;">
            <div class="newspaper-main-menu" id="stickyMenu">
            <div class="classy-nav-container breakpoint-off light left">
                <div class="container">
                    <nav class="classy-navbar justify-content-between" id="newspaperNav">

                        <div class="logo">
                         <a href="#"><amp-img src="{{ URL::to('images/logo.png') }}" alt="newspaper" width="180" height="48" layout="fixed"></amp-img></a>
                        </div>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <div role="button" aria-label="open sidebar" on="tap:header-sidebar.toggle" tabindex="0" class="ampstart-navbar-trigger  pr2  "><span class="navbarToggler"><span></span><span></span><span></span></span></div>
                        </div>




                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- close btn -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                             <!-- Nav End -->
                        </div>
                    </nav>
                </div>
            </div>
        </div></div>
    </header>
    <!-- ##### Header Area End ##### -->
    @include('transend_layouts.amp_layouts.nav')