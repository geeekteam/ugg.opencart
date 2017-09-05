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
                <h1 class="tt-cont"><?=$heading_title;?></h1>
                <p>Постепенно желающих купить сапоги из овчины становится так много, что Брайан Смит решает основать собственную компанию по их производству. В 1980 году австралиец создает фирму Ugg Holdings Inc и одновременно регистрирует торговую марку «ugg boots». За первый сезон работы начинающий бизнесмен продает около пятидесяти пар овчинных сапог. История логотипа и торгового знака UGG Australia начинается чуть позже – в 1985 году, когда Смит подает соответствующую заявку на регистрацию.</p>
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