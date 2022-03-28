<?php require_once 'components/header.php' ?>
    <!-- Show case  -->
    <div class="container mt-4 d-lg-flex text-start text-sm-start justify-content-between">
        <div class="left-cotnainer vh-40 mt-auto mb-3">
            <h1 class = "display-3 fw-bold">Discover Your Life,Travel where you Want.</h1>
            <!-- <p class = "">to get the best of yoyr adventure you just need to leave and go where you like. we are waiting for you.</p> -->
            <a href="/booking_train/booking" class="btn shadow text-white pt-3 pb-3 pe-4 ps-4 fw-bold mt-3 text" style="background-color: #ff5f00;<?php if ( isset($_SESSION['role']) && $_SESSION['role'] == 1) {echo 'display:none';} else {echo 'display:block;width:50%';}?>">Book Now</a>
        </div>
        <div class="right-container ">
          <img class="home-thumb d-none d-md-block" src="public/assets/cover.svg" alt="">
        </div>
    </div>

    <!-- more content -->

    <div class="container py-5">
        <div class="row row-cols-1 row-cols-md-3 g-4 d-flex flex-column flex-md-row justify-content-center">
                <div class="col-md-4 col ">
                    <div class="card shadow">
                    <img src="public/assets/photo1.svg" class="card-img-top p-5" alt="...">
                    <div class="card-body">
                        <h5 class="card-title fw-bold text-center">Services</h5>
                        <p class="card-text text-center lead">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    </div>
                    </div>
                </div>
                <div class="col-md-4 col ">
                    <div class="card shadow">
                    <img src="public/assets/photo2.svg" class="card-img-top p-5" alt="...">
                    <div class="card-body">
                        <h5 class="card-title fw-bold text-center">Decalaration</h5>
                        <p class="card-text text-center lead">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    </div>
                    </div>
                </div>
                <div class="col-md-4 col ">
                    <div class="card shadow">
                    <img src="public/assets/photo1.svg" class="card-img-top p-5" alt="...">
                    <div class="card-body">
                        <h5 class="card-title fw-bold text-center">More informations</h5>
                        <p class="card-text text-center lead">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    </div>
                    </div>
                </div>
             </div>
         </div>

<?php require_once 'components/footer.php' ?>
