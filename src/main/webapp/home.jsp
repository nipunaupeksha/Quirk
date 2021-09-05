<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--========== BOX ICONS ==========-->
    <link href="https://cdn.jsdelivr.net/npm/boxicons@2.0.5/css/boxicons.min.css" rel="stylesheet">

    <!--========== CSS ==========-->
    <link rel="stylesheet" href="./css/styles.css">
    <title>Quirk Sports</title>
</head>

<body>
    <!--====== SCROLL TOP ======-->
    <a href="#" class="scrolltop" id="scroll-top">
        <i class="bx bx-chevron-up scrolltop__icon"></i>
    </a>
    <!--===== HEADER =====-->
    <header id="header" class="l-header">
        <nav class="nav bd-container" role="navigation">
            <a href="#home" class="nav__logo">
                <h1>Quirk</h1>
            </a>
            <div class="nav__menu" id="nav-menu">
                <ul class="nav__list">
                    <li class="nav__item"><a href="#home">Home</a></li>
                    <li class="nav__item"><a href="#about">About Us</a></li>
                    <li class="nav__item"><a href="#products">Products</a></li>
                    <li class="nav__item"><a href="<%=response.encodeURL("getProfileDetails")%>">Profile</a></li>
                    <li class="nav__item"><a href="#search">Search</a></li>
                    <li class="nav__item"><a href="registerUser">Register</a></li>
                    <li class="nav__item"><a href="logout">Logout</a></li>
                    <li class="nav__item"><a href=""><%=displayDate()%></a></li>
                    <li><i class='bx bx-moon change-theme' id="theme-button"></i></li>
                </ul>
            </div>
            <div class="nav__toggle" id="nav-toggle">
                <i class="bx bx-menu"></i>
            </div>
        </nav>
    </header>
    <main class="l-main">
        <!--===== HOME =====-->
        <section class="home" id="home">
            <div class="home__container bd-container bd-grid">
                <div class="home__data">
                    <h1 class="home__title">Ready for your Competition?</h1>
                    <h2 class="home__substitute">Find the right products, <br> for a healthy lifestyle.</h2>
                </div>
                <img src="./images/home.png" alt="" class="home__img" />
            </div>
        </section>
        <!--====== ABOUT ======-->
        <section class="about section bd-container" id="about">
            <div class="about__container bd-grid">
                <div class="about__data">
                    <span class="section-subtitle about__initial">About Us</span>
                    <h2 class="section-title about__initial">We provide the best <br> products</h2>
                    <p class="about__description">In 2020, Quirk founder <a href="#employees-willagreene">Willa
                            Greene</a> set out to create supplements and nutritional products made from the
                        <em>purest ingredients</em> and backed by scientific and <em>performance data</em> - to provide
                        a strong basis of <em>trust and accountability</em>.
                    </p>
                    <a href="#" class="button">Explore history</a>
                </div>
                <img src="./images/about.png" alt="" class="about__img">
            </div>
        </section>
        <!--====== PRODUCTS ======-->
        <section class="products section bd-container" id="products">
            <span class="section-subtitle">Special</span>
            <h2 class="section-title">Products of the week</h2>

            <div class="products__container bd-grid">
                <div class="products__content">
                    <img src="./images/mineralwater-blueberry.png" alt="" class="products__img">
                    <h3 class="products__name">Blueberry Mineral Water</h3>
                    <span class="products__detail">Mineral water with Blueberry flavor</span>
                    <span class="products__price">$22.00</span>
                    <a href="#" class="button products__button"><i class="bx bx-cart-alt"></i></a>
                </div>
                <div class="products__content">
                    <img src="./images/mineralwater-lemonlime.png" alt="" class="products__img">
                    <h3 class="products__name">Lemon Mineral Water</h3>
                    <span class="products__detail">Mineral water with Lemon flavor</span>
                    <span class="products__price">$22.00</span>
                    <a href="#" class="button products__button"><i class="bx bx-cart-alt"></i></a>
                </div>
                <div class="products__content">
                    <img src="./images/mineralwater-orange.png" alt="" class="products__img">
                    <h3 class="products__name">Orange Mineral Water</h3>
                    <span class="products__detail">Mineral water with Orange flavor</span>
                    <span class="products__price">$22.00</span>
                    <a href="#" class="button products__button"><i class='bx bx-cart-alt'></i></a>
                </div>
                <div class="products__content">
                    <img src="./images/mineralwater-peach.png" alt="" class="products__img">
                    <h3 class="products__name">Peach Mineral Water</h3>
                    <span class="products__detail">Mineral water with Peach flavor</span>
                    <span class="products__price">$22.00</span>
                    <a href="#" class="button products__button"><i class='bx bx-cart-alt'></i></a>
                </div>
                <div class="products__content">
                    <img src="./images/mineralwater-raspberry.png" alt="" class="products__img">
                    <h3 class="products__name">Raspberry Mineral Water</h3>
                    <span class="products__detail">Mineral water with Raspberry flavor</span>
                    <span class="products__price">$22.00</span>
                    <a href="#" class="button products__button"><i class='bx bx-cart-alt'></i></a>
                </div>
                <div class="products__content">
                    <img src="./images/mineralwater-strawberry.png" alt="" class="products__img">
                    <h3 class="products__name">Strawberry Mineral Water</h3>
                    <span class="products__detail">Mineral water with Strawberry flavor</span>
                    <span class="products__price">$22.00</span>
                    <a href="#" class="button products__button"><i class='bx bx-cart-alt'></i></a>
                </div>

                <div class="products__content">
                    <img src="./images/proteinbar-chocolate.png" alt="" class="products__img">
                    <h3 class="products__name">Chocolate Protein Bar</h3>
                    <span class="products__detail">Nutritional protein bar with Chocolate flavor</span>
                    <span class="products__price">$12.00</span>
                    <a href="#" class="button products__button"><i class='bx bx-cart-alt'></i></a>
                </div>
                <div class="products__content">
                    <img src="./images/proteinbar-lemon.png" alt="" class="products__img">
                    <h3 class="products__name">Lemon Protein Bar</h3>
                    <span class="products__detail">Nutritional protein bar with Lemon flavor</span>
                    <span class="products__price">$12.00</span>
                    <a href="#" class="button products__button"><i class='bx bx-cart-alt'></i></a>
                </div>
                <div class="products__content">
                    <img src="./images/proteinbar-peanutbutter.png" alt="" class="products__img">
                    <h3 class="products__name">Penut Butter Protein Bar</h3>
                    <span class="products__detail">Nutritional protein bar with Peanut flavor</span>
                    <span class="products__price">$12.00</span>
                    <a href="#" class="button products__button"><i class='bx bx-cart-alt'></i></a>
                </div>

                <div class="products__content">
                    <img src="./images/vitamin-a.png" alt="" class="products__img">
                    <h3 class="products__name">Vitamin A</h3>
                    <span class="products__detail">Bottle of Vitamins</span>
                    <span class="products__price">$9.50</span>
                    <a href="#" class="button products__button"><i class='bx bx-cart-alt'></i></a>
                </div>
                <div class="products__content">
                    <img src="./images/vitamin-bcomplex.png" alt="" class="products__img">
                    <h3 class="products__name">Vitamin B Complex</h3>
                    <span class="products__detail">Bottle of Vitamins</span>
                    <span class="products__price">$9.50</span>
                    <a href="#" class="button products__button"><i class='bx bx-cart-alt'></i></a>
                </div>
                <div class="products__content">
                    <img src="./images/vitamin-c.png" alt="" class="products__img">
                    <h3 class="products__name">Vitamin C</h3>
                    <span class="products__detail">Bottle of Vitamins</span>
                    <span class="products__price">$9.50</span>
                    <a href="#" class="button products__button"><i class='bx bx-cart-alt'></i></a>
                </div>
                <div class="products__content">
                    <img src="./images/vitamin-calcium.png" alt="" class="products__img">
                    <h3 class="products__name">Vitamin Calcium</h3>
                    <span class="products__detail">Bottle of Vitamins</span>
                    <span class="products__price">$9.50</span>
                    <a href="#" class="button products__button"><i class='bx bx-cart-alt'></i></a>
                </div>
                <div class="products__content">
                    <img src="./images/vitamin-flaxseed-oil.png" alt="" class="products__img">
                    <h3 class="products__name">Vitamin Flaxseed Oil</h3>
                    <span class="products__detail">Bottle of Vitamins</span>
                    <span class="products__price">$9.50</span>
                    <a href="#" class="button products__button"><i class='bx bx-cart-alt'></i></a>
                </div>
                <div class="products__content">
                    <img src="./images/vitamin-d.png" alt="" class="products__img">
                    <h3 class="products__name">Vitamin D</h3>
                    <span class="products__detail">Bottle of Vitamins</span>
                    <span class="products__price">$9.50</span>
                    <a href="#" class="button products__button"><i class='bx bx-cart-alt'></i></a>
                </div>
                <div class="products__content">
                    <img src="./images/vitamin-iron.png" alt="" class="products__img">
                    <h3 class="products__name">Vitamin Iron</h3>
                    <span class="products__detail">Bottle of Vitamins</span>
                    <span class="products__price">$9.50</span>
                    <a href="#" class="button products__button"><i class='bx bx-cart-alt'></i></a>
                </div>
                <div class="products__content">
                    <img src="./images/vitamin-magnesium.png" alt="" class="products__img">
                    <h3 class="products__name">Vitamin Magnesium</h3>
                    <span class="products__detail">Bottle of Vitamins</span>
                    <span class="products__price">$9.50</span>
                    <a href="#" class="button products__button"><i class='bx bx-cart-alt'></i></a>
                </div>
                <div class="products__content">
                    <img src="./images/vitamin-multi.png" alt="" class="products__img">
                    <h3 class="products__name">Multi Vitamins</h3>
                    <span class="products__detail">Bottle of Vitamins</span>
                    <span class="products__price">$9.50</span>
                    <a href="#" class="button products__button"><i class='bx bx-cart-alt'></i></a>
                </div>
            </div>
        </section>
        <!--===== PEOPLE =====-->
        <section class="people section bd-container" id="people">
            <span class="section-subtitle">People</span>
            <h2 class="section-title">Our amazing team</h2>
            <div class="people__container bd-grid">
                <div class="people__content">
                    <img src="./images/ashleycarter.png" alt="" class="people__img" />
                    <h3 class="people__title">Ashly Carter</h3>
                    <p class="people__description">Director - Product Developement</p>
                </div>
                <div class="people__content">
                    <img src="./images/willagreene.png" alt="" class="people__img" />
                    <h3 class="people__title">Willa Greene</h3>
                    <p class="people__description">CEO/Founder</p>
                </div>
                <div class="people__content">
                    <img src="./images/jackryan.png" alt="" class="people__img" />
                    <h3 class="people__title">Jack Ryan</h3>
                    <p class="people__description">Director - Marketing and Sales</p>
                </div>
            </div>
        </section>
        <!--===== SEARCH =====-->
        <section class="search section bd-container" id="search">
            <h2 class="section-title">Search Products</h2>
            <div class="search__container bd-grid">
                <form action="search" method="get">
                    <input class="search__input" type="search" name="search" />
                    <input class="search__submit" type="submit" value="Search" />
                </form>
            </div>
        </section>
    </main>
    <!--========== FOOTER ==========-->
    <footer class="footer section bd-container">
        <div class="footer__container bd-grid">
            <div class="footer__content">
                <a href="#" class="footer__logo">Quirk</a>
                <span class="footer__description">Sports Center</span>
                <div>
                    <a href="#" class="footer__social"><i class='bx bxl-facebook'></i></a>
                    <a href="redirect" class="footer__social"><i class='bx bxl-instagram'></i></a>
                    <a href="#" class="footer__social"><i class='bx bxl-twitter'></i></a>
                </div>
            </div>

            <div class="footer__content">
                <h3 class="footer__title">Services</h3>
                <ul>
                    <li><a href="#" class="footer__link">Delivery</a></li>
                    <li><a href="#" class="footer__link">Pricing</a></li>
                    <li><a href="#" class="footer__link">Products</a></li>
                </ul>
            </div>

            <div class="footer__content">
                <h3 class="footer__title">Information</h3>
                <ul>
                    <li><a href="#" class="footer__link">Event</a></li>
                    <li><a href="#" class="footer__link">Contact us</a></li>
                    <li><a href="#" class="footer__link">Privacy policy</a></li>
                    <li><a href="#" class="footer__link">Terms of services</a></li>
                </ul>
            </div>

            <div class="footer__content">
                <h3 class="footer__title">Address</h3>
                <ul>
                    <li>Galle - Sri Lanka</li>
                    <li>Jr Union #999</li>
                    <li>999 - 888 - 777</li>
                    <li>quirk@email.com</li>
                </ul>
            </div>
        </div>

        <p class="footer__copy">&#169; 2020 Nipuna Upeksha. All right reserved</p>
    </footer>
    <%!
        public String displayDate(){
            SimpleDateFormat dateFormat = new SimpleDateFormat("YYYY-MM-dd hh:mm");
            Date date = Calendar.getInstance().getTime();
            return dateFormat.format(date);
        }

    %>
    <!--========== SCROLL REVEAL ==========-->
    <script src="https://unpkg.com/scrollreveal"></script>

    <!--========== MAIN JS ==========-->
    <script src="./js/main.js"></script>
</body>

</html>