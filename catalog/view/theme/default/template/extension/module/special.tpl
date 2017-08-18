<?php foreach ($products as $product): ?>
    <?php if ($product['product_id'] == 51): ?>
        <?php
                $options = $product['options'];
                $product_name = $product['name'];
                $product_price = str_replace(' ', ',',(str_replace('.00 р.', '', $product['price'])));
                if ($product['special']) {
                    $product_special_price = str_replace(' ', ',' ,(str_replace('.00 р.', '', $product['special'])));
                };
            ?>
        <section class="main-screen">
            <div class="main-screen-cont">
                <div class="container group">
                    <div class="main-screen-tt-cont">
                        <span class="main-screen-tt">лучшие ugg в москве</span>
                        <span class="main-screen-ic"><i class="icon icon-uggy"></i></span>
                        <div class="main-screen-sale"><span>Скидка <span>более 50%</span></span> ТОЛЬКО ДО <span
                                    class="js-future-date">...</span></div>
                    </div>
                    <div class="main-screen-product">
                                    <span class="img-main-screen-product">
                                        <img src="<?=($product['thumb']); ?>" alt="<?=($product['name']); ?>">
                                        <?php foreach($options as $option):?>
                                            <?php if($option['option_id'] == 13):?>
                                                <?php if (!empty(($option['value']))):?>
                                                    <span>-<?=$option['value'];?></span>
                                                <?php endif;?>
                                            <?php endif;?>
                                        <?php endforeach;?>
                                    </span>
                        <div class="main-screen-product-cont">
                            <span class="tt-main-screen-product-cont"><?=$product_name;?></span>
                            <?php if($product['special']): ?>
                                <span class="price-main-screen-product"><span><?=$product_special_price;?></span> руб.</span>
                            <?php else: ?>
                                <span class="price-main-screen-product"><span><?=$product_price;?></span> руб.</span>
                            <?php endif; ?>
                            <div class="size-main-screen-product">
                                <span>Размер (RUS)</span>
                                <div>
                                    <?php foreach($product['options'] as $option):?>
                                        <?php if($option['option_id'] == 14): ?>
                                            <?php $j = 0; foreach(($option['product_option_value']) as $sizes):?>
                                                <a href="#"><?php echo($sizes['name']);?></a>
                                            <?php $j++; endforeach;?>
                                        <?php endif;?>
                                    <?php endforeach;?>
                                </div>
                            </div>
                            <a href="#" class="btn btn-lg btn-icon">
                                <span>купить сейчас</span>
                                <i class="icon"> › </i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    <?php endif; ?>
<?php endforeach;?>


