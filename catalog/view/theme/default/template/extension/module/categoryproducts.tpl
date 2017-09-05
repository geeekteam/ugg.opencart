<div class="container">
    <div class="product-cont-catalog">
        <h2><?=$heading_title;?> <a href="<?=$category_href;?>">СМОТРЕТЬ ВСЕ</a></h2>
        <ul class="list-product">
            <?php foreach ($products as $product):
                $options = $product['options'];
                $product_name = $product['name'];
                $product_price = str_replace(' ', ',',(str_replace('.00 р.', '', $product['price'])));
                if ($product['special']) {
                    $product_special_price = str_replace(' ', ',' ,(str_replace('.00 р.', '', $product['special'])));
                };?>
                <li class="product-item">
                    <form action="#">
                        <input type="hidden" name="product_id" value="<?=$product['product_id']; ?>">
                        <a href="<?=$product['href'];?>" class="img-product-item"><img src="<?=$product['thumb'];?>" alt=""></a>
                        <span class="name-product-item"><span><?=$product['name'];?></span>
                        <div class="price-product-item">
                            <?php if($product['special']): ?>
                                <span class="new-price-item"><span><?=$product_special_price;?></span> руб</span>
                                <span class="old-price-item">/ <span><?=$product_price;?></span></span>
                            <?php else: ?>
                                <span class="new-price-item"><span><?=$product_price;?></span> руб</span>
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
            <?php endforeach; ?>
        </ul>
    </div>
</div>