<!DOCTYPE html>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.example.quirk.beans.Product"%>
<%@page import="java.util.List"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--========== BOX ICONS ==========-->
    <link href="https://cdn.jsdelivr.net/npm/boxicons@2.0.5/css/boxicons.min.css" rel="stylesheet" type="text/css">

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
                    <li class="nav__item"><a href="index.jsp#home">Home</a></li>
                    <li class="nav__item"><a href="index.jsp#about">About Us</a></li>
                    <li class="nav__item"><a href="index.jsp#products">Products</a></li>
                    <li class="nav__item"><a href="index.jsp#people">People</a></li>
                    <li class="nav__item"><a href="registerUser">Register</a></li>
                    <li class="nav__item"><a href="login">Login</a></li>
                    <li><i class="bx bx-moon change-theme" id="theme-button"></i></li>
                </ul>
            </div>
            <div class="nav__toggle" id="nav-toggle">
                <i class="bx bx-menu"></i>
            </div>
        </nav>
    </header>
    <!--===== MAIN =====-->
    <main class="l-main">
        <section class="products section bd-container" id="products">
            <span class="section-subtitle">Special</span>
            <h2 class="section-title">Products of the week</h2>
            <%
                if(session.getAttribute("cart")!=null){
            %>
            <h3 class="section-subtitle">Items in cart: <%=((ArrayList)session.getAttribute("cart")).size()%></h3>
            <%
                }else{
            %>
            <h3 class="section-subtitle">Items in cart: 0</h3>
            <%
                }
            %>
            <div class="products__container bd-grid">
                <!-- List products using scriptlets and expressions -->
                <%
                    List<Product> products = (ArrayList)request.getAttribute("products");
                    Iterator<Product> iterator = products.iterator();
                    while (iterator.hasNext()) {
                        Product product = iterator.next();
                %>
                <form action="addProducts" method="get">
                    <div class="products__content">
                        <img src="<%=product.getProductImgPath()%>" alt="" class="products__img">
                        <h3 class="products__name"><%=product.getProductName()%></h3>
                        <span class="products__detail"><%=product.getProductDescription()%></span>
                        <span class="products__price"><%=product.getProductPrice()%></span>
                        <input hidden type="text" name="product" value="<%=product.getProductName()%>">
                        <button class="button products__button"><i class="bx bx-cart-alt"></i></button>
                    </div>
                </form>
                <%
                    }
                %>
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
                    <a href="#" class="footer__social"><i class="bx bxl-facebook"></i></a>
                    <a href="redirect" class="footer__social"><i class="bx bxl-instagram"></i></a>
                    <a href="#" class="footer__social"><i class="bx bxl-twitter"></i></a>
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
    <!--========== SCROLL REVEAL ==========-->
    <script src="https://unpkg.com/scrollreveal"></script>

    <!--========== MAIN JS ==========-->
    <script src="./js/main.js"></script>
</body>

</html>