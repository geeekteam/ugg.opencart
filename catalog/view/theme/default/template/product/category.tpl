<?php

$last_elem = end($breadcrumbs);

echo $header;

?>

<div id="middle">
    <section class="section-inner">
        <div class="container group">
            <div class="aside">
                <div class="aside-img hidden-devices"><img src="/image/aside-banner.jpg" alt=""></div>
                <div class="aside-catalog">
                    <span class="tt-aside-catalog"><span>Каталог</span> <i class="icon"><img src="/image/icon-drop3.png" alt=""></i></span>
                    <div class="aside-catalog-bl">
                        <div>
                            <ul class="list-aside-catalog">
                                <li>
                                    <?php if (strpos($_SERVER['REQUEST_URI'], 'zhenskie-ugg')): ?>
                                        <a class="active">
                                            <i class="icon"> › </i>
                                            <span>Женские УГГИ</span>
                                        </a>
                                    <?php else: ?>
                                        <a href="/zhenskie-ugg">
                                            <i class="icon"> › </i>
                                            <span>Женские УГГИ</span>
                                        </a>
                                    <?php endif; ?>
                                </li>
                                <li>
                                    <?php if (strpos($_SERVER['REQUEST_URI'], 'muzhskie-ugg')): ?>
                                        <a class="active">
                                            <i class="icon"> › </i>
                                            <span>Мужские УГГИ</span>
                                        </a>
                                    <?php else: ?>
                                        <a href="/muzhskie-ugg">
                                            <i class="icon"> › </i>
                                            <span>Мужские УГГИ</span>
                                        </a>
                                    <?php endif; ?>
                                </li>
                                <li>
                                    <?php if (strpos($_SERVER['REQUEST_URI'], 'detskie-ugg')): ?>
                                        <a class="active">
                                            <i class="icon"> › </i>
                                            <span>Детские УГГИ</span>
                                        </a>
                                    <?php else: ?>
                                        <a href="/detskie-ugg">
                                            <i class="icon"> › </i>
                                            <span>Детские УГГИ</span>
                                        </a>
                                    <?php endif; ?>
                                </li>
                            </ul>

                            <ul class="list-aside-catalog">
                                <li>
                                    <?php if (strpos($_SERVER['REQUEST_URI'], 'vysokie-ugg')): ?>
                                        <a class="active">
                                            <i class="icon"> › </i>
                                            <span>Высокие UGG</span>
                                        </a>
                                    <?php else: ?>
                                        <a href="/vysokie-ugg">
                                            <i class="icon"> › </i>
                                            <span>Высокие UGG</span>
                                        </a>
                                    <?php endif; ?>
                                </li>
                                <li>
                                    <?php if (strpos($_SERVER['REQUEST_URI'], 'korotkie-ugg')): ?>
                                        <a class="active">
                                            <i class="icon"> › </i>
                                            <span>Короткие UGG</span>
                                        </a>
                                    <?php else: ?>
                                        <a href="/korotkie-ugg">
                                            <i class="icon"> › </i>
                                            <span>Короткие UGG</span>
                                        </a>
                                    <?php endif; ?>
                                </li>
                            </ul>
                            <ul class="list-aside-product">
                                <li>
                                    <?php if (strpos($_SERVER['REQUEST_URI'], 'ugg-bailey-dylyn')): ?>
                                        <a class="active">UGG Bailey &amp; Dylyn</a>
                                    <?php else: ?>
                                        <a href="/ugg-bailey-dylyn">UGG Bailey &amp; Dylyn</a>
                                    <?php endif; ?>
                                </li>
                                <li>
                                    <?php if (strpos($_SERVER['REQUEST_URI'], 'ugg-bailey-triplet')): ?>
                                        <a class="active">UGG Bailey Triplet</a>
                                    <?php else: ?>
                                        <a href="/ugg-bailey-triplet">UGG Bailey Triplet</a>
                                    <?php endif; ?>
                                </li>
                            </ul>
                        </div>
                        <?=$column_left;?>
                    </div>
                </div>
                <div class="aside-reviews hidden-devices">
                    <div class="aside-reviews-bl">
                        <span class="img-aside-reviews"><img src="/image/photo-reviews.png" alt=""></span>
                        <div class="txt-aside-reviews">
                            <span class="q-txt"><img src="/image/q-icon.png" alt=""></span>
                            <p>Официальный сайт Ugg Australia предлагает Вам купить угги оригинальные по низкой цене в нашем интернет-магазине Угг Австралия в Москве.</p>
                            <b>Елена, Москва</b>
                        </div>
                    </div>
                    <div class="aside-reviews-bl">
                        <span class="img-aside-reviews"><img src="/image/photo-reviews.png" alt=""></span>
                        <div class="txt-aside-reviews">
                            <span class="q-txt"><img src="/image/q-icon.png" alt=""></span>
                            <p>Официальный сайт Ugg Australia предлагает Вам купить угги оригинальные по низкой цене в нашем интернет-магазине Угг Австралия в Москве.</p>
                            <b>Елена, Москва</b>
                        </div>
                    </div>
                    <a href="/otzyvy" class="btn btn-icon btn-max">
                        <span>ВСЕ ОТЗЫВЫ</span>
                        <i class="icon"> › </i>
                    </a>
                </div>
            </div>
            <div class="content">
                <ul class="bread-crumbs hidden-devices">
                    <?php $i = 0; foreach ($breadcrumbs as $breadcrumb): ?>
                        <?php if ($i == 0):?>
                            <li><a href="/">Главная</a></li>
                        <?php elseif ($last_elem !== $breadcrumb): ?>
                            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                        <?php elseif ($last_elem == $breadcrumb): ?>
                            <li><?php echo $breadcrumb['text']; ?></li>
                        <?php endif;?>
                    <?php $i++; endforeach;?>
                </ul>
                <h1 class="tt-cont js-category-title"><?=$heading_title;?></h1>
                <div class="mobile-hidden">
                    <?=$description;?>
                </div>
                <div class="number-product-bl js-sort">
                    <span class="number-product"><?=count($products);?> товаров</span>
                    <select class="js-sort">
                        <option disabled selected>Сортировка</option>
                        <option class="js-sort-asc">По возрастанию цены</option>
                        <option class="js-sort-desc">По убыванию цены</option>
                    </select>
                </div>
                <ul class="list-product js-sortable" data-category="<?=$heading_title;?>">
                    <?php foreach ($products as $k => $product):
                        $options = $product['options'];
                        $product_name = $product['name'];
                        $product_price = str_replace(' ', ',',(str_replace('.00 р.', '', $product['price'])));
                        if ($product['special']) {
                            $product_special_price = str_replace(' ', ',' ,(str_replace('.00 р.', '', $product['special'])));
                        };?>

                            <?php if($product['special']): ?>
                                    <li class="product-item prod-item-wrapper item" data-category="<?=$heading_title;?>" data-price="<?=$product['special'];?>">
                                <?php else: ?>
                                    <li class="product-item prod-item-wrapper item" data-category="<?=$heading_title;?>" data-price="<?=$product['price'];?>">
                                <?php endif; ?>
                                <form class="prod-item" action="#">
                                    <input type="hidden" name="product_id" value="<?=$product['product_id']; ?>">
                                    <a href="<?=$product['href'];?>" class="img-product-item"><img src="<?=$product['thumb'];?>" alt=""></a>
                                    <span class="name-product-item"><span><?=$product['name'];?></span>
                                    <div class="price-product-item">
                                        <?php if($product['special']): ?>
                                            <span class="new-price-item"><span><?=$product_special_price;?></span> руб</span>
                                            <span class="old-price-item">/<span><?=$product_price;?></span></span>
                                        <?php else: ?>
                                            <span class="new-price-item"><span><?=$product['price'];?></span> руб</span>
                                        <?php endif;?>
                                    </div>
                                    <a href="#" class="btn btn-icon js-btn-buy">
                                        <span>купить сейчас</span>
                                        <i class="icon"> › </i>
                                    </a>
                                    <?php foreach($options as $option):?>
                                        <?php if($option['option_id'] == 13):?>
                                            <?php if (!empty(($option['value']))):?>
                                                <span class="product-item-sale"><?=$option['value'];?></span>
                                            <?php endif;?>
                                        <?php endif;?>
                                    <?php endforeach;?>
                                </form>
                            </li>
                        <?php if (($k+1) % 9 == 0 && $k != 0): ?>
                            </ul>
                            <div class="banner-content">
                                <span class="tt-banner-content">BAILEY BUTTON</span>
                                <span class="txt-banner-content">Постепенно желающих купить сапоги из овчины становится так много, что Брайан Смит решает основать собственную компанию по их производству</span>
                            </div>
                            <ul class="list-product js-sortable" data-category="<?=$heading_title;?>">
                        <?php endif; ?>
                    <?php endforeach;?>
                </ul>
                <?=$content_bottom;?>
            </div>
        </div>
    </section>
</div>

<?php echo $footer; ?>