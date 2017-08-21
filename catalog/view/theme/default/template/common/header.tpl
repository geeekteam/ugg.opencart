<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo $title; ?></title>
</head>

<link href="/catalog/view/theme/default/stylesheet/main.css" rel="stylesheet">

<script src="/catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="/catalog/view/javascript/owl.carousel.min.js" type="text/javascript" defer></script>
<script src="/catalog/view/javascript/magnific-popup.min.js" type="text/javascript" defer></script>
<script src="/catalog/view/javascript/jcf.min.js" type="text/javascript" defer></script>
<script src="/catalog/view/javascript/zoomsl-3.0.min.js" type="text/javascript" defer></script>
<script src="/catalog/view/javascript/main.js" type="text/javascript" defer></script>
<script src="/catalog/view/javascript/custom.js" type="text/javascript" defer></script>

<body>

<div id="wrapper">


    <div id="cartModal" class="cart-modal mfp-hide">
        <div class="product-info-icons hidden-devices">
            <div class="prod-icon-item">
                <i class="icon icon-advantage4"></i>
                <span class="prod-icon-name">
            <span>Доставка </span>
            <span>в день заказа</span>
          </span>
            </div>

            <div class="prod-icon-item">
                <i class="icon icon-advantage5"></i>
                <span class="prod-icon-name">
            <span>Возврат</span>
            <span>365 дней </span>
          </span>
            </div>

            <div class="prod-icon-item">
                <i class="icon icon-advantage6"></i>
                <span class="prod-icon-name">
            <span>Гарантия</span>
            <span>60 дней</span>
          </span>
            </div>

            <div class="prod-icon-item">
                <i class="icon icon-advantage7"></i>
                <span class="prod-icon-name">
            <span> Оригинальные</span>
            <span>УГГИ из Австралии</span>
          </span>
            </div>


        </div>

        <h2>Ваш заказ</h2>

        <div class="product-cart-table-wrapp">
            <div class="prod-cart-table">
                <div class="prod-cart-row hidden-mobile">
                    <div class="prod-cart-col t-col-1">Фото</div>
                    <div class="prod-cart-col t-col-2">Название</div>
                    <div class="prod-cart-col t-col-3">Размер</div>
                    <div class="prod-cart-col t-col-4">Количество</div>
                    <div class="prod-cart-col t-col-5">Цена</div>
                </div>

                <div class="prod-cart-row">
                    <div class="prod-cart-col t-col-1">
                        <span class="prod-cart-img"><img src="img/product1.jpg" alt=""></span>
                    </div>

                    <div class="prod-cart-col t-col-2">
                        <span class="prod-cart-name">Bailey Button White Metallic</span>
                    </div>

                    <div class="prod-cart-col t-col-3">
                        <div class="prod-cart-select-wrapp">
                            <select name="" id="">
                                <option value="">41</option>
                                <option value="">41</option>
                                <option value="">41</option>
                                <option value="">41</option>
                                <option value="">41</option>
                            </select>
                        </div>
                        <div class="prod-cart-check-wrapp">
                            <input type="checkbox" id="ch1" name="ch1">
                            <label for="ch1">Не уверена в размере - привезите несколько</label>
                        </div>
                    </div>

                    <div class="prod-cart-col t-col-4">
                        <div class="col-panel-tc">
                            <span class="minus-input">-</span>
                            <input type="text" value="1">
                            <span class="plus-input">+</span>
                        </div>
                    </div>

                    <div class="prod-cart-col t-col-5">
                        <span class="prod-cart-price">6,460 <span class="rubl"> </span></span>
                    </div>
                </div>

                <div class="prod-cart-row">
                    <div class="prod-cart-col t-col-1">
                        <span class="prod-cart-img"><img src="img/product3.jpg" alt=""></span>
                    </div>

                    <div class="prod-cart-col t-col-2">
                        <span class="prod-cart-name">Bailey Button Black</span>
                    </div>

                    <div class="prod-cart-col t-col-3">
                        <div class="prod-cart-select-wrapp">
                            <select name="" id="">
                                <option value="">41</option>
                                <option value="">41</option>
                                <option value="">41</option>
                                <option value="">41</option>
                                <option value="">41</option>
                            </select>
                        </div>
                        <div class="prod-cart-check-wrapp">
                            <input type="checkbox" id="ch1" name="ch1">
                            <label for="ch1">Не уверена в размере - привезите несколько</label>
                        </div>
                    </div>

                    <div class="prod-cart-col t-col-4">
                        <div class="col-panel-tc">
                            <span class="minus-input">-</span>
                            <input type="text" value="1">
                            <span class="plus-input">+</span>
                        </div>
                    </div>

                    <div class="prod-cart-col t-col-5">
                        <span class="prod-cart-price">6,460 <span class="rubl"> </span></span>
                    </div>
                </div>


            </div>

            <div class="prod-cart-table-summ">
                <div class="cart-table-del">
                    <span class="tt-cart-table-del">Доставка:</span>
                    <span class="cart-table-del-item">
              <input type="radio" checked id="rad1" name="delrad">
              <label for="rad1">по Москве</label>
            </span>
                    <span class="cart-table-del-item">
              <input type="radio" id="rad2" name="delrad">
              <label for="rad2">по России (+390 <span class="rubl"> </span>)</label>
            </span>
                    <span class="cart-table-del-item">
              <input type="radio" id="rad3" name="delrad">
              <label for="rad3">Самовывоз<br> (м. Театральная, Столешников пер. 11)</label>
            </span>
                </div>

                <div class="cart-table-summ-value">
                    <span>Итого:</span>
                    <span class="prod-cart-price">12,920 <span class="rubl"> </span></span>
                </div>
            </div>
        </div>

        <div class="modal-contacts-form">
            <form action="#">
                <div class="form-group">
                    <label for="inputName">Ваше имя</label>
                    <div class="icon-input">
                        <i class="icon icon-pers"></i>
                        <input type="text" placeholder="ВАШЕ ИМЯ" id="inputName">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPhone">Ваш телефон</label>
                    <div class="icon-input">
                        <i class="icon icon-phone3"></i>
                        <input type="text" placeholder="+7" id="inputPhone" class="mask-phone">
                    </div>
                </div>
                <button class="btn btn-icon btn-max" type="submit"><span>ОФОРМИТЬ</span> <i class="icon">›</i></button>
            </form>
        </div>
    </div>

    <div id="feedback" class="st-modal mfp-hide">
        <div class="modal-contacts-form">
            <form action="#">
                <span class="site-h2-tt text-center">Обратный звонок</span>
                <div class="form-group form-group-icon">
                    <i class="icon icon-pers"></i>
                    <input type="text" placeholder="Ваше имя" id="input-name">
                </div>
                <div class="form-group form-group-icon">
                    <i class="icon icon-phone3"></i>
                    <input type="text" placeholder="+7" id="input-phone" class="mask-phone">
                </div>
                <button class="btn btn-icon btn-max" type="submit"><span>ОФОРМИТЬ</span> <i class="icon">›</i></button>
            </form>
        </div>
    </div>

    <header id="header" class="header">

        <div class="header-panel">
            <div class="container">
                <ul class="head-nav">
                    <li><a href="#">О нас</a></li>
                    <li><a href="#">Доставка и оплата</a></li>
                    <li><a href="#">Отзывы</a></li>
                    <li><a href="#">Возврат</a></li>
                    <li><a href="#">Контакты</a></li>
                </ul>
            </div>
        </div>

        <div class="container">
            <div class="header-bl">
                <div class="logo">
                    <?php if ($_SERVER['REQUEST_URI'] == '/'): ?>
                        <a><img src="<?=$logo;?>" title="<?=$name;?>" alt="<?=$name;?>"></a>
                    <?php else: ?>
                        <a href="<?=$home;?>"><img src="<?=$logo;?>" title="<?=$name;?>" alt="<?=$name;?>"></a>
                    <?php endif; ?>
                        <span class="logo-slogan"><?=$name;?></span>
                </div>
                <div class="header-cont-bl">
                    <div class="header-info">
                <span class="item-header-info">
                  <i class="icon icon-house"></i>
                  <span>Сеть магазинов по всей России и СНГ</span>
                </span>
                        <span class="item-header-info">
                  <i class="icon icon-car"></i>
                  <span>Бесплатная доставка по Москве за 24 часа</span>
                </span>
                    </div>
                    <div class="header-contact">Ежедневно 10:00 – 21:00 <span>8 (495) 256-01-63</span></div>
                </div>
                <div class="header-feedback">
                    <a href="#feedback" class="feedback-link open-modal">
                        <i class="icon icon-phone"></i>
                        <span>Заказать звонок</span>
                    </a>
                    <a href="#cartModal" class="link-basket open-modal">
                        <i class="icon icon-cart"></i>
                        <span>(0)</span>
                    </a>
                </div>
            </div>
        </div>

        <div class="head-menu">
            <div class="menu-icon-wrap">
            <span class="menu-icon">
              <span></span>
            </span>
            </div>

            <div class="menu-wrapper-fixed">
                <div class="menu-open-wrapper">

                    <nav class="header-nav">
                        <ul class="menu">
                            <li><a href="#">Распродаж</a></li>
                            <li class="menu-drop-down">
                      <span class="menu-dd-open-link">
                        <span>Женские Угги</span>
                        <i class="arrow-corner-bottom"></i>
                      </span>
                                <ul>
                                    <li><a href="#">Женские Угги</a></li>
                                    <li><a href="#">Женские Угги</a></li>
                                    <li><a href="#">Женские Угги</a></li>
                                    <li><a href="#">Женские Угги</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Короткие Угги</a></li>
                            <li><a href="#">Мини Угги</a></li>
                            <li><a href="#">Bailey Button</a></li>
                        </ul>
                        <div class="search">
                            <form action="#">
                                <div class="search-inp"><input type="text" placeholder="Поиск"></div>
                                <button type="submit" class="btn-search"><i class="icon icon-search"></i></button>
                            </form>
                        </div>
                    </nav>

                </div>
            </div>
        </div>
    </header>