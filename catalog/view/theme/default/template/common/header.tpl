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