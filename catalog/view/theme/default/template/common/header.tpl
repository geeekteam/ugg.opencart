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
    <form action="#" id="cartModal" class="cart-modal mfp-hide jqs-send-form">
        <div class="product-info-icons">
            <div class="prod-icon-item">
                <i class="icon icon-advantage4"></i>
                <span class="prod-icon-name">
                    <span>Доставка</span>
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
            <div class="prod-cart-table js-prod-cart-table" id="cart">
                <div class="prod-cart-row hidden-mobile">
                    <div class="prod-cart-col t-col-1">Фото</div>
                    <div class="prod-cart-col t-col-2">Название</div>
                    <div class="prod-cart-col t-col-3">Размер</div>
                    <div class="prod-cart-col t-col-4">Количество</div>
                    <div class="prod-cart-col t-col-5">Цена</div>
                </div>
                <?php foreach($cart as $cartItem) : ?>
                    <div class="prod-cart-row js-prod-cart-item" data-cart-id="<?=$cartItem['cart_id']?>">
                        <input class="js-product-id" type="hidden" name="products[<?=$cartItem['product_id']; ?>][product_id]" value="<?=$cartItem['product_id']; ?>">
                        <input type="hidden" name="products[<?=$cartItem['product_id']; ?>][product_name]" value="<?=$cartItem['name']; ?>">
                        <input class="js-hidden-input-item-price" type="hidden" name="products[<?=$cartItem['product_id']; ?>][product_price]" value="<?=$cartItem['price']; ?>">
                        <input type="hidden" class="js-hidden-input-product-size" name="products[<?=$cartItem['product_id']; ?>][product_size]">
                        <input type="hidden" class="js-hidden-input-give-some" name="products[<?=$cartItem['product_id']; ?>][give_some]">
                        <input type="hidden" class="js-hidden-input-product-quantity" value="<?=$product_quantity;?>">
                        <a href="<?=$product_href;?>" class="prod-cart-col t-col-1">
                            <span class="prod-cart-img"><img src="/image/<?=$cartItem['image']; ?>" alt=""></span>
                        </a>
                        <a href="<?=$product_href;?>" class="prod-cart-col t-col-2">
                            <span class="prod-cart-name"><?=$cartItem['name']; ?></span>
                        </a>
                        <div class="prod-cart-col t-col-3">
                            <div class="prod-cart-select-wrapp js-select-size">
                                <select class="">
                                    <?php foreach($cartItem['options'] as $option) : ?>
                                        <?php if($option['option_id'] == 14) : ?>
                                            <?php foreach($option['product_option_value'] as $optionValue) : ?>
                                                <?php if(isset($cartItem['option'][0]['product_option_value_id'])): ?>
                                                    <?php $selectedOption = ($optionValue['product_option_value_id'] ==  $cartItem['option'][0]['product_option_value_id']) ? 'selected' : '';?>
                                                    <option value="<?=$optionValue['product_option_value_id']; ?>" <?=$selectedOption;?>><?=$optionValue['name']; ?> </option>
                                                <?php else: ?>
                                                    <?php $selectedOption = ''; ?>
                                                <?php endif; ?>
                                                <option value="<?=$optionValue['product_option_value_id']; ?>"><?=$optionValue['name']; ?> </option>
                                            <?php endforeach; ?>
                                        <?php endif; ?>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                            <div class="prod-cart-check-wrapp js-give-some">
                                <label>
                                    <input type="checkbox" value="привезите несколько">
                                    <span class="js-give-some-text">Не уверена в размере - привезите несколько</span>
                                </label>
                            </div>
                        </div>

                        <div class="prod-cart-col t-col-4">
                            <div class="col-panel-tc">
                                <span class="minus-input js-minus-count">-</span>
                                <input class="js-item-count" type="text" name="products[<?=$cartItem['product_id']; ?>][product_quantity]" value="<?=$cartItem['quantity'];?>" >
                                <span class="plus-input js-plus-count">+</span>
                            </div>
                        </div>

                        <div class="prod-cart-col t-col-5">
                            <span class="prod-cart-price js-item-price"><?=$cartItem['total'];?> <span class="rubl"> </span></span>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>

            <div class="prod-cart-table-summ">
                <div class="cart-table-del js-delivery-type">
                    <span class="tt-cart-table-del">Доставка:</span>
                    <span class="cart-table-del-item js-delivery-default">
                        <input type="radio" checked id="rad1" name="delivery_type" value="по Москве">
                        <label for="rad1">по Москве</label>
                    </span>
                    <span class="cart-table-del-item js-delivery-russian">
                        <input type="radio" id="rad2" name="delivery_type" value="по России">
                        <label for="rad2">по России (+390 <span class="rubl"> </span>)</label>
                    </span>
                    <span class="cart-table-del-item js-delivery-default">
                        <input type="radio" id="rad3" name="delivery_type" value="самовывоз">
                        <label for="rad3">Самовывоз<br> (м. Театральная, Столешников пер. 11)</label>
                    </span>
                </div>

                <div class="cart-table-summ-value">
                    <span>Итого:</span>
                    <span class="prod-cart-price js-total-price"> </span>
                </div>
            </div>
        </div>

        <div class="modal-contacts-form">
            <input type="hidden" class="js-total-price-input" name="total_price" value="">
            <div class="form-group">
                <label for="inputName">Ваше имя</label>
                <div class="icon-input">
                    <i class="icon icon-pers"></i>
                    <input type="text" placeholder="ВАШЕ ИМЯ" id="input-name" name="firstname" value="">
                </div>
            </div>
            <div class="form-group">
                <label for="inputPhone">Ваш телефон</label>
                <div class="icon-input">
                    <i class="icon icon-phone3"></i>
                    <input type="text" placeholder="+7" id="input-phone" class="mask-phone" name="telephone" value="">
                </div>
            </div>
            <button class="btn btn-icon btn-max" type="submit"><span>ОФОРМИТЬ</span> <i class="icon">›</i></button>
        </div>
    </form>

    <div id="feedback" class="jqs-feedback-form st-modal mfp-hide">
        <div class="modal-contacts-form">
            <form action="#">
                <span class="site-h2-tt text-center">Обратный звонок</span>
                <div class="form-group form-group-icon">
                    <i class="icon icon-pers"></i>
                    <input type="text" placeholder="Ваше имя" name="firstname" id="input-name">
                </div>
                <div class="form-group form-group-icon">
                    <i class="icon icon-phone3"></i>
                    <input type="text" placeholder="+7" name="telephone" id="input-phone" class="mask-phone">
                </div>
                <button class="btn btn-icon btn-max" type="submit"><span>ОФОРМИТЬ</span> <i class="icon">›</i></button>
            </form>
        </div>
    </div>

    <div id="thanks" class="st-modal mfp-hide">
        <div class="modal-thanks">
            <p class="site-h2-tt text-center">Спасибо за заказ!</p>
            <p class="site-h2-tt text-center">Мы перезвоним Вам в ближайшее время</p>
        </div>
    </div>

    <div id="popup_size_table" class="cart-modal mfp-hide">
        <div>
            <table class="table table-bordered table-razmer">
                <thead>
                <tr>
                    <th>US</th>
                    <th>Женский US</th>
                    <th>UK</th>
                    <th>EURO</th>
                    <th>RUS</th>
                    <th>CM</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>4,5</td>
                    <td>5</td>
                    <td>2</td>
                    <td>34,5</td>
                    <td>33,5</td>
                    <td>21,5</td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>5,5</td>
                    <td>2,5</td>
                    <td>35</td>
                    <td>34</td>
                    <td>22</td>
                </tr>
                <tr>
                    <td>5,5</td>
                    <td>6</td>
                    <td>3</td>
                    <td>36</td>
                    <td>35</td>
                    <td>22,5</td>
                </tr>
                <tr>
                    <td>6</td>
                    <td>6,5</td>
                    <td>3,5</td>
                    <td>36,5</td>
                    <td>35,5</td>
                    <td>23</td>
                </tr>
                <tr>
                    <td>6,5</td>
                    <td>7</td>
                    <td>4</td>
                    <td>37,5</td>
                    <td>36</td>
                    <td>23.5</td>
                </tr>
                <tr>
                    <td>7</td>
                    <td>7,5</td>
                    <td>5</td>
                    <td>38</td>
                    <td>36.5</td>
                    <td>24,5</td>
                </tr>
                <tr>
                    <td>7,5</td>
                    <td>8</td>
                    <td>5</td>
                    <td>38,5</td>
                    <td>37,5</td>
                    <td>24,5</td>
                </tr>
                <tr>
                    <td>8</td>
                    <td>8,5</td>
                    <td>5.5</td>
                    <td>39</td>
                    <td>38</td>
                    <td>25</td>
                </tr>
                <tr>
                    <td>8,5</td>
                    <td>9</td>
                    <td>6</td>
                    <td>40</td>
                    <td>39</td>
                    <td>25,5</td>
                </tr>
                <tr>
                    <td>9</td>
                    <td>9,5</td>
                    <td>6,5</td>
                    <td>40,5</td>
                    <td>39,5</td>
                    <td>26</td>
                </tr>
                <tr>
                    <td>9,5</td>
                    <td>10</td>
                    <td>7</td>
                    <td>41</td>
                    <td>40</td>
                    <td>26,5</td>
                </tr>
                <tr>
                    <td>10</td>
                    <td>10,5</td>
                    <td>7,5</td>
                    <td>42</td>
                    <td>41</td>
                    <td>27</td>
                </tr>
                <tr>
                    <td>10,5</td>
                    <td>11</td>
                    <td>8</td>
                    <td>42,5</td>
                    <td>41,5</td>
                    <td>27,5</td>
                </tr>
                <tr>
                    <td>11</td>
                    <td></td>
                    <td>8.5</td>
                    <td>43</td>
                    <td>42</td>
                    <td>28</td>
                </tr>
                <tr>
                    <td>11,5</td>
                    <td></td>
                    <td>9</td>
                    <td>44</td>
                    <td>43</td>
                    <td>28,5</td>
                </tr>
                <tr>
                    <td>12</td>
                    <td></td>
                    <td>9.5</td>
                    <td>44,5</td>
                    <td>43,5</td>
                    <td>29</td>
                </tr>
                <tr>
                    <td>13</td>
                    <td></td>
                    <td>10,5</td>
                    <td>45,5</td>
                    <td>44</td>
                    <td>30<br></td>
                </tr>
                <tr>
                    <td><b>US<br></b></td>
                    <td><b>Мужской US</b></td>
                    <td><b>UK</b></td>
                    <td><b>EURO</b></td>
                    <td><b>RUS</b></td>
                    <td><b>CM</b></td>
                </tr>
                <tr>
                    <td>6</td>
                    <td>6,5</td>
                    <td>5,5</td>
                    <td>38,5</td>
                    <td>37,5</td>
                    <td>24</td>
                </tr>
                <tr>
                    <td>6,5</td>
                    <td>7</td>
                    <td>6</td>
                    <td>39</td>
                    <td>38</td>
                    <td>24,5</td>
                </tr>
                <tr>
                    <td>7</td>
                    <td>7,5</td>
                    <td>6</td>
                    <td>39,5</td>
                    <td>38,5</td>
                    <td>25</td>
                </tr>
                <tr>
                    <td>7</td>
                    <td>7,5</td>
                    <td>6</td>
                    <td>40</td>
                    <td>39</td>
                    <td>25</td>
                </tr>
                <tr>
                    <td>7,5</td>
                    <td>8</td>
                    <td>6,5</td>
                    <td>40,5</td>
                    <td>41,5</td>
                    <td>25,5</td>
                </tr>
                <tr>
                    <td>8</td>
                    <td>8,5</td>
                    <td>7</td>
                    <td>41</td>
                    <td>42</td>
                    <td>26</td>
                </tr>
                <tr>
                    <td>8,5</td>
                    <td>9</td>
                    <td>7,5</td>
                    <td>42</td>
                    <td>43</td>
                    <td>26,5</td>
                </tr>
                <tr>
                    <td>9</td>
                    <td>9,5</td>
                    <td>8</td>
                    <td>42,5</td>
                    <td>43,5</td>
                    <td>27</td>
                </tr>
                <tr>
                    <td>9,5</td>
                    <td>10</td>
                    <td>8,5</td>
                    <td>43</td>
                    <td>44</td>
                    <td>27,5</td>
                </tr>
                <tr>
                    <td>10</td>
                    <td>10,5</td>
                    <td>9</td>
                    <td>44</td>
                    <td>45</td>
                    <td>28</td>
                </tr>
                <tr>
                    <td>10,5</td>
                    <td>11</td>
                    <td>9,5</td>
                    <td>44,5</td>
                    <td>45,5</td>
                    <td>28,5</td>
                </tr>
                <tr>
                    <td>11</td>
                    <td>11,5</td>
                    <td>10</td>
                    <td>45</td>
                    <td>46</td>
                    <td>29</td>
                </tr>
                <tr>
                    <td>11,5</td>
                    <td>12</td>
                    <td>10,5</td>
                    <td>45,5</td>
                    <td>46,5</td>
                    <td>29,5</td>
                </tr>
                <tr>
                    <td>12</td>
                    <td>12,5</td>
                    <td>11</td>
                    <td>46</td>
                    <td>47</td>
                    <td>30</td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="clear"></div>
    </div>

    <header id="header" class="header">

        <div class="header-panel">
            <div class="container">
                <div class="header-panel-top">
                    <span class="header-panel-top__title">Дисконт-центр UGG Australia  №1 в России</span>
                    <ul class="head-nav">
                        <?php if (strpos($_SERVER['REQUEST_URI'], 'o-nas')): ?>
                            <li><span>О нас</span></li>
                        <?php else: ?>
                            <li><a href="/o-nas">О нас</a></li>
                        <?php endif; ?>
                        <?php if (strpos($_SERVER['REQUEST_URI'], 'dostavka-i-oplata')): ?>
                            <li><span>Доставка и оплата</span></li>
                        <?php else: ?>
                            <li><a href="/dostavka-i-oplata">Доставка и оплата</a></li>
                        <?php endif; ?>
                        <?php if (strpos($_SERVER['REQUEST_URI'], 'otzyvy')): ?>
                            <li><span>Отзывы</span></li>
                        <?php else: ?>
                            <li><a href="/otzyvy">Отзывы</a></li>
                        <?php endif; ?>
                        <?php if (strpos($_SERVER['REQUEST_URI'], 'vozvrat')): ?>
                            <li><span>Возврат</span></li>
                        <?php else: ?>
                            <li><a href="/vozvrat">Возврат</a></li>
                        <?php endif; ?>
                        <?php if (strpos($_SERVER['REQUEST_URI'], 'contacts')): ?>
                            <li><span>Контакты</span></li>
                        <?php else: ?>
                            <li><a href="/contacts">Контакты</a></li>
                        <?php endif; ?>
                    </ul>
                </div>
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
                    <a href="#feedback" class="feedback-link open-modal mobile-hidden">
                        <i class="icon icon-phone"></i>
                        <span>Заказать звонок</span>
                    </a>
                    <?php if (count($cart)<1): ?>
                        <a href="#cartModal" class="link-basket hidden open-modal">
                    <?php else: ?>
                        <a href="#cartModal" class="link-basket open-modal">
                    <?php endif; ?>
                            <i class="icon icon-cart"></i>
                            <span class="basket-count-products">(<span class="js-basket-count-products">0</span>)</span>
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
                            <?php if (strpos($_SERVER['REQUEST_URI'], 'rasprodazha')): ?>
                                <li><a class="active">Распродажа</a></li>
                            <?php else: ?>
                                <li><a href="/rasprodazha">Распродажа</a></li>
                            <?php endif; ?>
                            <li class="menu-drop-down">
                                <span class="menu-dd-open-link">
                                    <span>Женские Угги</span>
                                    <i class="arrow-corner-bottom"></i>
                                </span>
                                <ul>
                                    <li>
                                        <span>Модели</span>
                                        <ul>
                                            <?php if (strpos($_SERVER['REQUEST_URI'], 'ugg-jimmy-choo')): ?>
                                                <li><a class="active">Ugg Jimmy Choo</a></li>
                                            <?php else: ?>
                                                <li><a href="/ugg-jimmy-choo">Ugg Jimmy Choo</a></li>
                                            <?php endif; ?>

                                            <?php if (strpos($_SERVER['REQUEST_URI'], 'ugg-bailey-dylyn')): ?>
                                                <li><a class="active">Ugg Bailey & Dylyn</a></li>
                                            <?php else: ?>
                                                <li><a href="/ugg-bailey-dylyn">Ugg Bailey & Dylyn</a></li>
                                            <?php endif; ?>

                                            <?php if (strpos($_SERVER['REQUEST_URI'], 'ugg-bailey-button')): ?>
                                                <li><a class="active">Ugg Bailey Button</a></li>
                                            <?php else: ?>
                                                <li><a href="/ugg-bailey-button">Ugg Bailey Button</a></li>
                                            <?php endif; ?>

                                            <?php if (strpos($_SERVER['REQUEST_URI'], 'ugg-bailey-triplet')): ?>
                                                <li><a class="active">Ugg Bailey Triplet</a></li>
                                            <?php else: ?>
                                                <li><a href="/ugg-bailey-triplet">Ugg Bailey Triplet</a></li>
                                            <?php endif; ?>

                                            <?php if (strpos($_SERVER['REQUEST_URI'], 'ugg-classic-mini')): ?>
                                                <li><a class="active">Ugg Classic Mini</a></li>
                                            <?php else: ?>
                                                <li><a href="/ugg-classic-mini">Ugg Classic Mini</a></li>
                                            <?php endif; ?>

                                            <?php if (strpos($_SERVER['REQUEST_URI'], 'ugg-classic-short')): ?>
                                                <li><a class="active">Ugg Classic Short</a></li>
                                            <?php else: ?>
                                                <li><a href="/ugg-classic-short">Ugg Classic Short</a></li>
                                            <?php endif; ?>

                                            <?php if (strpos($_SERVER['REQUEST_URI'], 'ugg-classic-tall')): ?>
                                                <li><a class="active">Ugg Classic Tall</a></li>
                                            <?php else: ?>
                                                <li><a href="/ugg-classic-tall">Ugg Classic Tall</a></li>
                                            <?php endif; ?>

                                            <?php if (strpos($_SERVER['REQUEST_URI'], 'ugg-classic-tall')): ?>
                                                <li><a class="active">Ugg Classic Tall</a></li>
                                            <?php else: ?>
                                                <li><a href="/ugg-classic-tall">Ugg Classic Tall</a></li>
                                            <?php endif; ?>

                                            <?php if (strpos($_SERVER['REQUEST_URI'], 'ugg-mini-mailey-bow')): ?>
                                                <li><a class="active">Ugg Mini Bailey Bow</a></li>
                                            <?php else: ?>
                                                <li><a href="/ugg-mini-mailey-bow">Ugg Mini Bailey Bow</a></li>
                                            <?php endif; ?>

                                            <?php if (strpos($_SERVER['REQUEST_URI'], 'ugg-mini-fox-fur')): ?>
                                                <li><a class="active">Ugg Mini Fox Fur</a></li>
                                            <?php else: ?>
                                                <li><a href="/ugg-mini-fox-fur">Ugg Mini Fox Fur</a></li>
                                            <?php endif; ?>

                                            <?php if (strpos($_SERVER['REQUEST_URI'], 'ugg-mocassin')): ?>
                                                <li><a class="active">Ugg Mocassin</a></li>
                                            <?php else: ?>
                                                <li><a href="/ugg-mocassin">Ugg Mocassin</a></li>
                                            <?php endif; ?>

                                        </ul>
                                    </li>
                                    <li>
                                        <span>Категории</span>
                                        <ul>
                                            <?php if (strpos($_SERVER['REQUEST_URI'], 'vysokie-ugg')): ?>
                                                <li><a class="active">Высокие UGG</a></li>
                                            <?php else: ?>
                                                <li><a href="/vysokie-ugg">Высокие UGG</a></li>
                                            <?php endif; ?>
                                            <?php if (strpos($_SERVER['REQUEST_URI'], 'korotkie-ugg')): ?>
                                                <li><a class="active">Короткие UGG</a></li>
                                            <?php else: ?>
                                                <li><a href="/korotkie-ugg">Короткие UGG</a></li>
                                            <?php endif; ?>
                                            <?php if (strpos($_SERVER['REQUEST_URI'], 'uggi-mini')): ?>
                                                <li><a class="active">Угги Мини</a></li>
                                            <?php else: ?>
                                                <li><a href="/uggi-mini">Угги Мини</a></li>
                                            <?php endif; ?>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <?php if (strpos($_SERVER['REQUEST_URI'], 'korotkie-ugg')): ?>
                                <li><a class="active">Короткие Угги</a></li>
                            <?php else: ?>
                                <li><a href="/korotkie-ugg">Короткие Угги</a></li>
                            <?php endif; ?>
                            <?php if (strpos($_SERVER['REQUEST_URI'], 'ugg-bailey-dylyn')): ?>
                                <li><a class="active">Ugg Bailey & Dylyn</a></li>
                            <?php else: ?>
                                <li><a href="/ugg-bailey-dylyn">Ugg Bailey & Dylyn</a></li>
                            <?php endif; ?>
                        </ul>
                        <div class="search search-form">
                            <div class="search-inp">
                                <input type="text" name="search" placeholder="Поиск">
                                <span class="search-close"></span>
                            </div>
                            <span class="btn-search"><i class="icon icon-search"></i></span>
                        </div>
                        <ul class="head-nav-mobile">
                            <?php if (strpos($_SERVER['REQUEST_URI'], 'o-nas')): ?>
                                <li><span>О нас</span></li>
                            <?php else: ?>
                                <li><a href="/o-nas">О нас</a></li>
                            <?php endif; ?>
                            <?php if (strpos($_SERVER['REQUEST_URI'], 'dostavka-i-oplata')): ?>
                                <li><span>Доставка и оплата</span></li>
                            <?php else: ?>
                                <li><a href="/dostavka-i-oplata">Доставка и оплата</a></li>
                            <?php endif; ?>
                            <?php if (strpos($_SERVER['REQUEST_URI'], 'otzyvy')): ?>
                                <li><span>Отзывы</span></li>
                            <?php else: ?>
                                <li><a href="/otzyvy">Отзывы</a></li>
                            <?php endif; ?>
                            <?php if (strpos($_SERVER['REQUEST_URI'], 'vozvrat')): ?>
                                <li><span>Возврат</span></li>
                            <?php else: ?>
                                <li><a href="/vozvrat">Возврат</a></li>
                            <?php endif; ?>
                            <?php if (strpos($_SERVER['REQUEST_URI'], 'contacts')): ?>
                                <li><span>Контакты</span></li>
                            <?php else: ?>
                                <li><a href="/contacts">Контакты</a></li>
                            <?php endif; ?>
                        </ul>
                    </nav>
                    <div class="search-result-container">
                        <div class="search-result">
                            <div class="search-result-inner">
                                <div class="template">
                                    <a href="#">
                                        <div class="search-result-image"><img></div>
                                        <div class="search-result-name">
                                            <span></span>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>