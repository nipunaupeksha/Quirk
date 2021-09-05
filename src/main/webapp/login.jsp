<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                    <li class="nav__item"><a href="./index.html#home">Home</a></li>
                    <li class="nav__item"><a href="./index.html#about">About Us</a></li>
                    <li class="nav__item"><a href="./index.html#products">Products</a></li>
                    <li class="nav__item"><a href="./index.html#people">People</a></li>
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
        <section class="login section bd-container" id="login">
            <h2 class="section-title">Login</h2>
            <span class="section-subtitle">New to Quirk? <a class="register__link" href="registerUser">Join now!</a></span>
            <div class="login__container bd-grid">
                <div class="login__content">
                    <form  class="login__form" action="login" method="get">
                        <span class="login__element"><label class="login__form__label">Username</label> <input type="text" name="username" id="username" class="login__form__input"></span>
                        <span class="login__element"><label class="login__form__label">Password</label> <input type="password" name="password" id="password" class="login__form__input"></span>
                        <span class="login__element__button"><input class="button login__form__button" type="submit" value="Login" id="submit"></span>
                        <span class="section-subtitle">{0}</span>
                    </form>
                </div>
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