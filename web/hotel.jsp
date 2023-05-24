<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Yadovuvi-Hote</title>
        <link rel="stylesheet" href="style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link
            href="https://fonts.googleapis.com/css2?family=Merienda:wght@400;700&family=Poppins:wght@400;500;600&display=swap"
            rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
        <link rel="stylesheet" href="css/common.css">
        <style>
            .check-form {
                margin-top: -50px;
                z-index: 2;
                position: relative;
            }
        </style>

    </head>

    <body class="bg-light">
        !<!-- navbar include by components -->
        <%@include file="conponents/navbar.jsp" %>


        <div class="modal fade" id="loginModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
             aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="">
                        <div class="modal-header">
                            <h5 class="modal-title d-flex align-items-lg-center">
                                <i class="bi bi-person-circle fs-3 me-2"></i>User Login
                            </h5>
                            <button type="reset" class="btn-close shadow-none" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="mb-3">
                                <label class="form-label">Email address</label>
                                <input type="email" class="form-control shadow-none">
                            </div>
                            <div class="mb-4">
                                <label class="form-label">Password</label>
                                <input type="password" class="form-control shadow-none">
                                <span id="passwordHelpInline" class="form-text">
                                    Must be 8-20 characters long.
                                </span>
                            </div>
                            <div class="d-flex align-items-center justify-content-between mb-2">
                                <button type="submit" class="btn btn-dark shadow-none">LOGIN</button>
                                <a href="javascript: void(0)" class="text-secondary text-decoration-none">Forgot
                                    Password</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div class="modal fade" id="registerModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
             aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <form>
                        <div class="modal-header">
                            <h5 class="modal-title d-flex align-items-lg-center">
                                <i class="bi bi-person-lines-fill fs-3 me-2"></i>User Registration
                            </h5>
                            <button type="reset" class="btn-close shadow-none" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-6 ps-0 mb-3">
                                        <label class="form-label">First Name</label>
                                        <input type="text" class="form-control shadow-none">
                                    </div>
                                    <div class="col-md-6 p-0 mb-3 ">
                                        <label class="form-label">Last Name</label>
                                        <input type="text" class="form-control shadow-none">
                                    </div>
                                    <div class="col-md-6 ps-0 mb-3">
                                        <label class="form-label">Email</label>
                                        <input type="email" class="form-control shadow-none">
                                    </div>
                                    <div class="col-md-6 p-0 mb-3">
                                        <label class="form-label">Phone number</label>
                                        <input type="number" class="form-control shadow-none">
                                    </div>
                                    <div class="col-md-12 p-0 mb-3">
                                        <label class="form-label">Address</label>
                                        <textarea class="form-control shadow-none" rows="1"></textarea>
                                    </div>
                                    <div class="col-md-6 ps-0 mb-3">
                                        <label class="form-label">Pincode</label>
                                        <input type="number" class="form-control shadow-none">
                                    </div>
                                    <div class="col-md-6 p-0 mb-3">
                                        <label class="form-label">Date of birth</label>
                                        <input type="date" class="form-control shadow-none">
                                    </div>
                                    <div class="col-md-6 ps-0 mb-3">
                                        <label class="form-label">Password</label>
                                        <input type="password" class="form-control shadow-none">
                                    </div>
                                    <div class="col-md-6 p-0 mb-3">
                                        <label class="form-label">Confirm Password</label>
                                        <input type="password" class="form-control shadow-none">
                                    </div>

                                </div>
                            </div>
                            <div class="text-center my-1">
                                <button type="submit" class="btn btn-dark shadow-none">REGISTER</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- banner -->

        <div class="container-fluid px-lg-4 mt-4">
            <div class="swiper swiper-container">
                <div class="swiper-wrapper ">
                    <div class="swiper-slide">
                        <img src="images/carousel/g-1.jpg" class="w-100 d-block">
                    </div>
                    <div class="swiper-slide">
                        <img src="images/carousel/g-2.jpg" class="w-100 d-block">
                    </div>
                    <div class="swiper-slide">
                        <img src="images/carousel/g-3.jpg" class="w-100 d-block">
                    </div>
                    <div class="swiper-slide">
                        <img src="images/carousel/g-4.jpg" class="w-100 d-block">
                    </div>
                </div>
            </div>
        </div>
        <!-- check -->
        <div class="container check-form">
            <div class="row text-align-center">
                <div class="col-lg-12 bg-white shadow p-4 rounded">
                    <h1 class="font">Tráº£i nghiá»m kÃ¬ nghá» tuyá»t vá»i</h1>
                    <h5 class="mb-4 h-font">Combo khÃ¡ch sáº¡n - vÃ© mÃ¡y bay - ÄÆ°a ÄÃ³n sÃ¢n bay giÃ¡ tá»t nháº¥t</h5>
                    <form>
                        <div class="row align-items-end">
                            <div class="col-lg-3 mb-3">
                                <label class="form-label" style="font-weight: 500;">Tá»«</label>
                                <input type="date" class="form-control shadow-none">
                            </div>
                            <div class="col-lg-3 mb-3">
                                <label class="form-label" style="font-weight: 500;">Äáº¿n</label>
                                <input type="date" class="form-control shadow-none">
                            </div>
                            <div class="col-lg-3 mb-3">
                                <select class="form-select" aria-label="Default select example">
                                    <option selected>Open this select menu</option>
                                    <option value="1">One</option>
                                    <option value="2">Two</option>
                                    <option value="3">Three</option>
                                </select>
                            </div>

                            <div class="col-lg-3 mb-3">
                                <button type="submit" class="btn text-white shadow-none custom-bg">TÃ¬m kiáº¿m</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- rooms -->
        <h2 class="mt-5 pt-4 mb-4 text-center fw-bold h-font">OUR ROOMS</h2>

        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6 my-3">
                    <div class="card border-0 shadow" style="max-width: 350px; margin: auto;">
                        <img src="images/rooms/1.jpg" class="card-img-top">
                        <div class="card-body">
                            <h5 class="card-title">Simple Room Name</h5>
                            <h6 class="mb-4">500 000 VND/1 ÄÃªm</h6>
                            <div class="features mb-4">
                                <h6 class="mb-1">Features</h6>
                                <span class="badge rounded-pill bg-light text-dark text-wrap"> 2 Rooms</span>
                                <span class="badge rounded-pill bg-light text-dark text-wrap"> 1 Bathroom</span>
                                <span class="badge rounded-pill bg-light text-dark text-wrap"> 1 Balcony</span>
                                <span class="badge rounded-pill bg-light text-dark text-wrap"> 3 sofa</span>
                            </div>
                            <div class="facitilites mb-4">
                                <h6 class="mb-1">Facitilies</h6>
                                <span class="badge rounded-pill bg-light text-dark text-wrap"> wifi</span>
                                <span class="badge rounded-pill bg-light text-dark text-wrap"> Television</span>
                                <span class="badge rounded-pill bg-light text-dark text-wrap"> AC</span>
                                <span class="badge rounded-pill bg-light text-dark text-wrap"> Room heater</span>
                            </div>
                            <div class="guests mb-4">
                                <h6 class="mb-1">Guests</h6>
                                <span class="badge rounded-pill bg-light text-dark text-wrap"> 5 Adusts</span>
                                <span class="badge rounded-pill bg-light text-dark text-wrap"> 4 Children</span>
                            </div>
                            <div class="rating mb-4">
                                <h6 class="mb-1">Rating</h6>
                                <span class="badge rounded-pill bg-light">
                                    <i class="bi bi-star-fill text-warning"></i>
                                    <i class="bi bi-star-fill text-warning"></i>
                                    <i class="bi bi-star-fill text-warning"></i>
                                    <i class="bi bi-star-fill text-warning"></i>
                                </span>
                            </div>
                            <div class="d-flex justify-content-evenly mb-2">
                                <a href="#" class="btn btn-sm text-white custom-bg shadow-none">Book Now</a>
                                <a href="#" class="btn btn-sm btn-outline-dark shadow-none">More details</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 my-3">
                    <div class="card border-0 shadow" style="max-width: 350px; margin: auto;">
                        <img src="images/rooms/1.jpg" class="card-img-top">
                        <div class="card-body">
                            <h5 class="card-title">Simple Room Name</h5>
                            <h6 class="mb-4">500 000 VND/1 ÄÃªm</h6>
                            <div class="features mb-4">
                                <h6 class="mb-1">Features</h6>
                                <span class="badge rounded-pill bg-light text-dark text-wrap"> 2 Rooms</span>
                                <span class="badge rounded-pill bg-light text-dark text-wrap"> 1 Bathroom</span>
                                <span class="badge rounded-pill bg-light text-dark text-wrap"> 1 Balcony</span>
                                <span class="badge rounded-pill bg-light text-dark text-wrap"> 3 sofa</span>
                            </div>
                            <div class="facitilites mb-4">
                                <h6 class="mb-1">Facitilies</h6>
                                <span class="badge rounded-pill bg-light text-dark text-wrap"> wifi</span>
                                <span class="badge rounded-pill bg-light text-dark text-wrap"> Television</span>
                                <span class="badge rounded-pill bg-light text-dark text-wrap"> AC</span>
                                <span class="badge rounded-pill bg-light text-dark text-wrap"> Room heater</span>
                            </div>
                            <div class="guests mb-4">
                                <h6 class="mb-1">Guests</h6>
                                <span class="badge rounded-pill bg-light text-dark text-wrap"> 5 Adusts</span>
                                <span class="badge rounded-pill bg-light text-dark text-wrap"> 4 Children</span>
                            </div>
                            <div class="rating mb-4">
                                <h6 class="mb-1">Rating</h6>
                                <span class="badge rounded-pill bg-light">
                                    <i class="bi bi-star-fill text-warning"></i>
                                    <i class="bi bi-star-fill text-warning"></i>
                                    <i class="bi bi-star-fill text-warning"></i>
                                    <i class="bi bi-star-fill text-warning"></i>
                                </span>
                            </div>
                            <div class="d-flex justify-content-evenly mb-2">
                                <a href="#" class="btn btn-sm text-white custom-bg shadow-none">Book Now</a>
                                <a href="#" class="btn btn-sm btn-outline-dark shadow-none">More details</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 my-3">
                    <div class="card border-0 shadow" style="max-width: 350px; margin: auto;">
                        <img src="images/rooms/1.jpg" class="card-img-top">
                        <div class="card-body">
                            <h5 class="card-title">Simple Room Name</h5>
                            <h6 class="mb-4">500 000 VND/1 ÄÃªm</h6>
                            <div class="features mb-4">
                                <h6 class="mb-1">Features</h6>
                                <span class="badge rounded-pill bg-light text-dark text-wrap"> 2 Rooms</span>
                                <span class="badge rounded-pill bg-light text-dark text-wrap"> 1 Bathroom</span>
                                <span class="badge rounded-pill bg-light text-dark text-wrap"> 1 Balcony</span>
                                <span class="badge rounded-pill bg-light text-dark text-wrap"> 3 sofa</span>
                            </div>
                            <div class="facitilites mb-4">
                                <h6 class="mb-1">Facitilies</h6>
                                <span class="badge rounded-pill bg-light text-dark text-wrap"> wifi</span>
                                <span class="badge rounded-pill bg-light text-dark text-wrap"> Television</span>
                                <span class="badge rounded-pill bg-light text-dark text-wrap"> AC</span>
                                <span class="badge rounded-pill bg-light text-dark text-wrap"> Room heater</span>
                            </div>
                            <div class="guests mb-4">
                                <h6 class="mb-1">Guests</h6>
                                <span class="badge rounded-pill bg-light text-dark text-wrap"> 5 Adusts</span>
                                <span class="badge rounded-pill bg-light text-dark text-wrap"> 4 Children</span>
                            </div>
                            <div class="rating mb-4">
                                <h6 class="mb-1">Rating</h6>
                                <span class="badge rounded-pill bg-light">
                                    <i class="bi bi-star-fill text-warning"></i>
                                    <i class="bi bi-star-fill text-warning"></i>
                                    <i class="bi bi-star-fill text-warning"></i>
                                    <i class="bi bi-star-fill text-warning"></i>
                                </span>
                            </div>
                            <div class="d-flex justify-content-evenly mb-2">
                                <a href="#" class="btn btn-sm text-white custom-bg shadow-none">Book Now</a>
                                <a href="#" class="btn btn-sm btn-outline-dark shadow-none">More details</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-12 text-center mt-5">
                    <a href="rooms.jsp" class="btn btn-sm btn-outline-dark rounded-0 fw-bold shadow-none">More Rooms >>></a>
                </div>
            </div>
        </div>


        <!-- Facitilies-->
        <h2 class="mt-5 pt-4 mb-4 text-center fw-b h-font">OUR FACITILIES</h2>

        <div class="container">
            <div class="row justify-content-evenly px-lg-0 px-md-0 px-5">
                <div class="col-lg-2 col-md-2 text-center bg-white rounded shadow-none py-4 my-3">
                    <img src="images/features/wifi.svg" width="80px">
                    <h5 class="mt-3">Wifi</h5>
                </div>
                <div class="col-lg-2 col-md-2 text-center bg-white rounded shadow-none py-4 my-3">
                    <img src="images/features/wifi.svg" width="80px">
                    <h5 class="mt-3">Wifi</h5>
                </div>
                <div class="col-lg-2 col-md-2 text-center bg-white rounded shadow-none py-4 my-3">
                    <img src="images/features/wifi.svg" width="80px">
                    <h5 class="mt-3">Wifi</h5>
                </div>
                <div class="col-lg-2 col-md-2 text-center bg-white rounded shadow-none py-4 my-3">
                    <img src="images/features/wifi.svg" width="80px">
                    <h5 class="mt-3">Wifi</h5>
                </div>
                <div class="col-lg-2 col-md-2 text-center bg-white rounded shadow-none py-4 my-3">
                    <img src="images/features/wifi.svg" width="80px">
                    <h5 class="mt-3">Wifi</h5>
                </div>

                <div class="col-lg-12 text-center mt-5">
                    <a href="#" class="btn btn-sm btn-outline-dark rounded-0 fw-bold shadow-none">More Facitilites
                        >>></a>
                </div>
            </div>
        </div>

        <!-- testimonials-->
        <h2 class="mt-5 pt-4 mb-4 text-center fw-b h-font">Testimonials</h2>
        <div class="container">
            <div class="swiper swiper-testimonials">
                <div class="swiper-wrapper mb-5">
                    <div class="swiper-slide bg-white p-4">
                        <div class="profile d-flex align-items-center mb-3">
                            <img src="images/features/star.svg" width="30px">
                            <h6 class="m-0 ms-2">Ramdom user1</h6>
                        </div>
                        <p>
                            Lorem ipsum dolor sit amet consectetur adipiscing elit.Id nemo excepturi incidunt qui libero
                            at
                            omnis iure magni tempora ea.
                        </p>
                        <div class="rating">
                            <i class="bi bi-star-fill text-warning"></i>
                            <i class="bi bi-star-fill text-warning"></i>
                            <i class="bi bi-star-fill text-warning"></i>
                            <i class="bi bi-star-fill text-warning"></i>
                        </div>
                    </div>
                    <div class="swiper-slide bg-white p-4">
                        <div class="profile d-flex align-items-center mb-3">
                            <img src="images/features/star.svg" width="30px">
                            <h6 class="m-0 ms-2">Ramdom user1</h6>
                        </div>
                        <p>
                            Lorem ipsum dolor sit amet consectetur adipiscing elit.Id nemo excepturi incidunt qui libero
                            at
                            omnis iure magni tempora ea.
                        </p>
                        <div class="rating">
                            <i class="bi bi-star-fill text-warning"></i>
                            <i class="bi bi-star-fill text-warning"></i>
                            <i class="bi bi-star-fill text-warning"></i>
                            <i class="bi bi-star-fill text-warning"></i>
                        </div>
                    </div>
                    <div class="swiper-slide bg-white p-4">
                        <div class="profile d-flex align-items-center mb-3">
                            <img src="images/features/star.svg" width="30px">
                            <h6 class="m-0 ms-2">Ramdom user1</h6>
                        </div>
                        <p>
                            Lorem ipsum dolor sit amet consectetur adipiscing elit.Id nemo excepturi incidunt qui libero
                            at
                            omnis iure magni tempora ea.
                        </p>
                        <div class="rating">
                            <i class="bi bi-star-fill text-warning"></i>
                            <i class="bi bi-star-fill text-warning"></i>
                            <i class="bi bi-star-fill text-warning"></i>
                            <i class="bi bi-star-fill text-warning"></i>
                        </div>
                    </div>

                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>

        <!-- Reach us-->
        <h2 class="mt-5 pt-4 mb-4 text-center fw-b h-font">REACH US</h2>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-8 p-4 mb-lg-0 mb-3 bg-white rounded">
                    <iframe class="w-100 rounded mb-4" height="320px"
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d61349.64700643722!2d108.16550605945213!3d16.04716481482946!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314219c792252a13%3A0xfc14e3a044436487!2sDa%20Nang%2C%20H%E1%BA%A3i%20Ch%C3%A2u%20District%2C%20Da%20Nang%2C%20Vietnam!5e0!3m2!1sen!2s!4v1684212710762!5m2!1sen!2s"
                            loading="lazy"></iframe>
                    <h5>Address</h5>
                    <a href="https://goo.gl/maps/y7UaX1FvWmmb2hUa6" target="_blank"
                       class="d-inline-block text-decoration-none text-dark mb-2"><i class="bi bi-geo-alt-fill"></i>
                        99, Hai Chau, Da Nang, Viet Nam</a>
                </div>
                <div class="col-lg-4 col-md-4">
                    <div class="bg-white p-4 rounded mb-4">
                        <h5>Call us</h5>
                        <a href="tel: +84352397119" class="d-inline-block mb-2 text-decoration-none text-dark"> <i
                                class="bi bi-telephone-fill "></i> +84352397119</a>
                        <br>
                        <a href="tel: +84352397119" class="d-inline-block mb-2 text-decoration-none text-dark"> <i
                                class="bi bi-telephone-fill "></i> +84352397119</a>

                    </div>
                    <div class="bg-white p-4 rounded mb-4">
                        <h5>Follow us</h5>
                        <a href="#" class="d-inline-block mb-3"><span class="badge bg-light text-dark fs-6 p-2"><i
                                    class="bi bi-twitter me-1"></i> Twitter</span></a>
                        <br>
                        <a href="#" class="d-inline-block mb-3"><span class="badge bg-light text-dark fs-6 p-2"><i
                                    class="bi bi-facebook me-1"></i> Facebook</span></a>
                        <br>
                        <a href="#" class="d-inline-block "><span class="badge bg-light text-dark fs-6 p-2"><i
                                    class="bi bi-instagram me-1"></i>Instagram</span></a>

                    </div>
                </div>
            </div>
        </div>
        <!--footer-->>
        <div class="container-fluid bg-white mt-5">
            <div class="row">
                <div class="col-lg-4 p-4">
                    <h3 class="h-font fw-bold fs-3">Yadovuvi</h3>
                    <p> Lorem ipsum dolor sit amet consectetur adipiscing elit.
                        Id nemo excepturi incidunt qui libero at
                        omnis iure magni tempora ea.</p>
                </div>
                <div class="col-lg-4 p-4">
                    <h5 class="mb-3">Links</h5>
                    <a href="#" class="d-inline-block mb-2 text-dark text-decoration-none">KhÃ¡ch sáº¡n</a><br>
                    <a href="#" class="d-inline-block mb-2 text-dark text-decoration-none">Tours</a><br>
                    <a href="#" class="d-inline-block mb-2 text-dark text-decoration-none">cáº©m Nang du lá»ch </a><br>
                    <a href="#" class="d-inline-block mb-2 text-dark text-decoration-none">Others</a>
                </div>
                <div class="col-lg-4 p-4">
                    <h5 class="mb-3">Follow us</h5>
                    <a href="#" class="d-inline-block text-dark text-decoration-none mb-2"><i
                            class="bi bi-twitter me-1"></i> Twitter</a><br>
                    <a href="#" class="d-inline-block text-dark text-decoration-none mb-2"><i
                            class="bi bi-facebook me-1"></i> Facebook</a><br>
                    <a href="#" class="d-inline-block text-dark text-decoration-none mb-2"><i
                            class="bi bi-instagram me-1"></i> Instagram</a><br>
                </div>
            </div>
        </div>
        <h6 class="text-center bg-dark text-white p-3 m-0">Design and development by Yadovuvi team</h6>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>


        <script>
            var swiper = new Swiper(".swiper-container", {
                spaceBetween: 30,
                effect: "fade",
                loop: true,
                autoplay: {
                    delay: 3500,
                    disableOnInteraction: false,
                }
            });

            var swiper = new Swiper(".swiper-testimonials", {
                effect: "coverflow",
                grabCursor: true,
                centeredSlides: true,
                loop: true,
                slidesPerView: "auto",
                slidesPerView: "3",
                coverflowEffect: {
                    rotate: 50,
                    stretch: 0,
                    depth: 100,
                    modifier: 1,
                    slideShadows: true,
                },
                pagination: {
                    el: ".swiper-pagination",
                },
                breakpoint: {
                    320: {
                        slidesPerView: 1,
                    },
                    640: {
                        slidesPerView: 1,
                    },
                    768: {
                        slidesPerView: 2,
                    },
                    1024: {
                        slidesPerView: 3,
                    },
                }
            });
        </script>
    </body>

</html>