<?php

$last_elem = end($breadcrumbs);
$special_price = str_replace(' ', ',', str_replace(('.00 р.'), '', $special));
$default_price = str_replace(' ', '', str_replace(('.00 р.'), '', $price));
$economy_sum = $default_price - $special_price;

foreach($options as $option):
    if($option['option_id'] == 13):
        if (!empty(($option['value']))):
            $discount = $option['value'];
        endif;
    endif;
endforeach;

echo $header;
?>

<div id="middle">
    <section class="section-product">
        <div class="product-info-icons-top">
            <div class="container">
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
                    <div class="prod-icon-item">
                        <i class="icon icon-advantage8"></i>
                        <span class="prod-icon-name">
                <span>Магазин в центре</span>
                <span>Москвы</span>
              </span>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
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
            <h1 class="tt-cont"><?=$heading_title; ?></h1>
            <form class="product-inner">
                <input type="hidden" name="product_id" value="<?=$product_id; ?>">
                <div class="owl-slider-thumb-wrapp">
                    <div class="owl-slider-main owl-carousel owl-loaded owl-drag">
                        <div>
                            <img src="<?php echo $thumb; ?>" alt="">
                            <span class="product-item-sale"><?=$discount; ?></span>
                        </div>
                        <?php foreach ($images as $image) : ?>
                            <div>
                                <img src="<?=$image['thumb']; ?>">
                                <span class="product-item-sale"><?=$discount; ?></span>
                            </div>
                        <?php endforeach;?>
                    </div>
                    <div class="owl-thumbs owl-carousel owl-loaded owl-drag">
                        <div class="thumb-item"><img src="<?php echo $thumb; ?>" alt=""></div>
                        <?php foreach ($images as $image) : ?>
                            <div class="thumb-item"><img src="<?=$image['thumb']; ?>"></div>
                        <?php endforeach;?>
                    </div>
                </div>
                <div class="product-inner-cont">
                    <div class="product-inner-info">
                        <span class="tt-product-inner-info">Акция до <span class="js-future-date">...</span></span>
                        <span class="product-inner-info-sale">
                            <i class="icon icon-check"></i>
                            <span>Осталось 2 пары по акции</span>
                        </span>
                        <div class="price-product-item">
                            <?php if ($special): ?>
                                <span class="new-price-item"><span><?=$special_price;?></span> <span class="rubl"> </span></span>
                                <span class="old-price-item">/ <span><?=$default_price?></span></span>
                            <?php else: ?>
                                <span class="new-price-item"><span><?=$special_price;?></span> <span class="rubl"> </span></span>
                            <?php endif; ?>
                        </div>
                        <a href="#popup_size_table" class="link-table open-modal">
                            <i class="icon icon-table"></i>
                            <span>Таблица размеров</span>
                        </a>
                        <?php foreach($options as $option): ?>
                            <?php if ($option['option_id'] == 14): ?>
                                <ul class="list-size-filter">
                                    <?php $i = 1; foreach($option['product_option_value'] as $sizes): ?>
                                        <li>
                                            <label class="js-size-label size-label js-btn-buy">
                                                <input class="js-size" type="radio" name="<?=$option['product_option_id']?>" value="<?=$sizes['product_option_value_id']?>" data-size="<?php echo $sizes['name']; ?>" id="mSize<?=$i;?>">
                                                <a><?=($sizes['name']);?></a>
                                            </label>
                                        </li>
                                    <?php $i++; endforeach;?>
                                </ul>
                            <?php endif;?>
                        <?php endforeach;?>

                        <label>
                            <input class="js-give-some-in-cart" type="checkbox" value="привезите несколько">
                            <span>Привезти несколько размеров</span>
                        </label>

                        <?php foreach($options as $option): ?>
                            <?php if ($option['option_id'] == 16): ?>
                                <div class="delivery">
                                    <span>Доставка:</span>
                                    <div class="delivery-bl">
                                        <div>
                                            <label>
                                                <input type="radio" checked name="delivery" class="js-delivery-in-cart" value="по Москве">
                                                <span>По Москве</span>
                                            </label>
                                        </div>
                                        <div>
                                            <label>
                                                <input type="radio" name="delivery" class="js-delivery-in-cart" value="по России">
                                                <span>По России (+390 р.)</span>
                                            </label>
                                        </div>
                                        <div>
                                            <label>
                                                <input type="radio" name="delivery" class="js-delivery-in-cart" value="самовывоз">
                                                <span>Самовывоз</span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            <?php endif; ?>
                        <?php endforeach; ?>
                        <a class="btn-lg btn btn-icon js-btn-buy">
                            <span>купить сейчас</span>
                            <i class="icon"> › </i>
                        </a>
                    </div>
                    <div class="product-inner-banner hidden-devices">
                        <div class="product-inner-banner-bl">
                            <i class="icon icon-price"></i>
                            <span class="tt-product-inner-banner"><span>Дарим подарок</span> каждому клиенту нашего магазина</span>
                        </div>
                    </div>
                </div>
            </form>
            <div class="characteristics">
                <?php if($attribute_groups):?>
                    <div class="characteristics-cont">
                        <span class="tt-characteristics">Характеристики</span>
                        <div class="characteristics-table">
                            <table>
                                <?php foreach($attribute_groups as $characteristics): ?>
                                    <?php if($characteristics['attribute_group_id'] == 10): ?>
                                        <?php foreach($characteristics['attribute'] as $attribute): ?>
                                        <tr>
                                            <td><?=$attribute['name']; ?></td>
                                            <td><?=$attribute['text']; ?></td>
                                        </tr>
                                        <?php endforeach; ?>
                                    <?php endif;?>
                                <?php endforeach; ?>
                            </table>
                        </div>
                    </div>
                <?php endif; ?>
                <div class="characteristics-txt">
                    <div class="characteristics-link">
                        <a href="/dostavka-i-oplata">Доставка и оплата</a>
                        <a href="/vozvrat">Возврат</a>
                    </div>
                    <p><?=$sku;?></p>
                    <?=$description;?>
                </div>
            </div>
        </div>
        <div class="reviews">
            <div class="container">
                <h2 class="col-wt">ОТЗЫВЫ <a href="/otzyvy">СМОТРЕТЬ ВСЕ</a></h2>
                <div class="owl-carousel reviews-slider">
                    <?php $i = 0; shuffle($custom_reviews['text']); foreach ($custom_reviews['text'] as $review): ?>
                    <div class="reviews-slider-item">
                        <div class="txt-reviews-slider">
                            <span class="ic-q"><img src="/image/q-icon.png" alt=""></span>
                            <p><?=htmlspecialchars_decode($review['description']);?></p>
                        </div>
                        <div class="img-reviews">
                            <span><img src="/image/<?=$review['image'];?>" alt=""></span>
                            <p><?=$review['name'];?></p>
                        </div>
                    </div>
                    <?php $i++; if($i == 4) break; endforeach; ?>
                </div>
            </div>
        </div>
        <div class="container">

        <?=$column_left; ?>

        <h2>Похожие модели</a></h2>
            <div class="product-cont-catalog product-cont-catalog-bb">
                <ul class="list-product">
                    <?php foreach ($products as $product): ?>
                        <li class="product-item">
                            <form action="#">
                                <input type="hidden" name="product_id" value="<?=$product['product_id']; ?>">
                                <a href="<?=$product['href']; ?>" class="img-product-item"><img src="<?=$product['thumb']; ?>" alt="<?=$product['name']; ?>"></a>
                                <span class="name-product-item"><span><?=$product['name']; ?>s</span>
                                <div class="price-product-item">
                                    <?php if ($product['special']): ?>
                                        <?php
                                        $special_price = str_replace(' ', ',', str_replace(('.00 р.'), '', $product['special']));
                                        $default_price = str_replace(' ', '', str_replace(('.0000'), '', $product['price']));
                                        ?>
                                        <span class="new-price-item"><span><?=$special_price?></span> руб</span>
                                        <span class="old-price-item">/ <span><?=$default_price?></span></span>
                                    <?php else: ?>
                                        <span class="new-price-item"><span><?=$default_price?></span> руб</span>
                                    <?php endif; ?>
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
    </section>
</div>
<script type="text/javascript"><!--
    $('select[name=\'recurring_id\'], input[name="quantity"]').change(function () {
        $.ajax({
            url: 'index.php?route=product/product/getRecurringDescription',
            type: 'post',
            data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
            dataType: 'json',
            beforeSend: function () {
                $('#recurring-description').html('');
            },
            success: function (json) {
                $('.alert, .text-danger').remove();

                if (json['success']) {
                    $('#recurring-description').html(json['success']);
                }
            }
        });
    });
    //--></script>
<script type="text/javascript"><!--
    $('#button-cart').on('click', function () {
        $.ajax({
            url: 'index.php?route=checkout/cart/add',
            type: 'post',
            data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
            dataType: 'json',
            beforeSend: function () {
                $('#button-cart').button('loading');
            },
            complete: function () {
                $('#button-cart').button('reset');
            },
            success: function (json) {
                $('.alert, .text-danger').remove();
                $('.form-group').removeClass('has-error');

                if (json['error']) {
                    if (json['error']['option']) {
                        for (i in json['error']['option']) {
                            var element = $('#input-option' + i.replace('_', '-'));

                            if (element.parent().hasClass('input-group')) {
                                element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
                            } else {
                                element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
                            }
                        }
                    }

                    if (json['error']['recurring']) {
                        $('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
                    }

                    // Highlight any found errors
                    $('.text-danger').parent().addClass('has-error');
                }

                if (json['success']) {
                    $('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

                    $('#cart > button').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');

                    $('html, body').animate({scrollTop: 0}, 'slow');

                    $('#cart > ul').load('index.php?route=common/cart/info ul li');
                }
            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });
    //--></script>
<script type="text/javascript"><!--
    $('.date').datetimepicker({
        pickTime: false
    });

    $('.datetime').datetimepicker({
        pickDate: true,
        pickTime: true
    });

    $('.time').datetimepicker({
        pickDate: false
    });

    $('button[id^=\'button-upload\']').on('click', function () {
        var node = this;

        $('#form-upload').remove();

        $('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

        $('#form-upload input[name=\'file\']').trigger('click');

        if (typeof timer != 'undefined') {
            clearInterval(timer);
        }

        timer = setInterval(function () {
            if ($('#form-upload input[name=\'file\']').val() != '') {
                clearInterval(timer);

                $.ajax({
                    url: 'index.php?route=tool/upload',
                    type: 'post',
                    dataType: 'json',
                    data: new FormData($('#form-upload')[0]),
                    cache: false,
                    contentType: false,
                    processData: false,
                    beforeSend: function () {
                        $(node).button('loading');
                    },
                    complete: function () {
                        $(node).button('reset');
                    },
                    success: function (json) {
                        $('.text-danger').remove();

                        if (json['error']) {
                            $(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
                        }

                        if (json['success']) {
                            alert(json['success']);

                            $(node).parent().find('input').val(json['code']);
                        }
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        }, 500);
    });
    //--></script>
<script type="text/javascript"><!--
    $('#review').delegate('.pagination a', 'click', function (e) {
        e.preventDefault();

        $('#review').fadeOut('slow');

        $('#review').load(this.href);

        $('#review').fadeIn('slow');
    });

    $('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

    $('#button-review').on('click', function () {
        $.ajax({
            url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
            type: 'post',
            dataType: 'json',
            data: $("#form-review").serialize(),
            beforeSend: function () {
                $('#button-review').button('loading');
            },
            complete: function () {
                $('#button-review').button('reset');
            },
            success: function (json) {
                $('.alert-success, .alert-danger').remove();

                if (json['error']) {
                    $('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
                }

                if (json['success']) {
                    $('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

                    $('input[name=\'name\']').val('');
                    $('textarea[name=\'text\']').val('');
                    $('input[name=\'rating\']:checked').prop('checked', false);
                }
            }
        });
        grecaptcha.reset();
    });

    $(document).ready(function () {
        $('.thumbnails').magnificPopup({
            type: 'image',
            delegate: 'a',
            gallery: {
                enabled: true
            }
        });
    });

    $(document).ready(function () {
        var hash = window.location.hash;
        if (hash) {
            var hashpart = hash.split('#');
            var vals = hashpart[1].split('-');
            for (i = 0; i < vals.length; i++) {
                $('#product').find('select option[value="' + vals[i] + '"]').attr('selected', true).trigger('select');
                $('#product').find('input[type="radio"][value="' + vals[i] + '"]').attr('checked', true).trigger('click');
                $('#product').find('input[type="checkbox"][value="' + vals[i] + '"]').attr('checked', true).trigger('click');
            }
        }
    })
    //--></script>
<?php echo $footer; ?>
