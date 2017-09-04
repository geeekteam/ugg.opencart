$('.reviews-carousel').owlCarousel({
    loop: true,
    nav: true,
    dots: false,
    autoplay: false,
    mouseDrag: false,
    items: 2,
    responsive: {
        0: {
            items: 1
        },
        480: {
            items: 2
        }
    }
});

function futureDate() {
    var dateSpan = $('.js-future-date'),
        futureDate = new Date(),
        options = {
            month: 'long',
            day: 'numeric'
        };
    futureDate.setDate(futureDate.getDate() + 2);
    futureDate = futureDate.toLocaleString("ru", options);
    dateSpan.html(futureDate + '!').css('display', 'inline-block');
}


function scrollToTop() {
    var scrollButton = $('.js-scroll-top');

    scrollButton.hide();

    $(document).ready(function () {
        $(window).scroll(function () {
            if ($(window).scrollTop() > 700) {
                scrollButton.fadeIn("slow");
            } else {
                scrollButton.fadeOut("slow");
            }
        })
    });

    scrollButton.click(function () {
        $("html, body").animate({scrollTop: 0}, "slow");
        return false;
    });
}

var page = 1;
var loadPage = false;

$(function () {
    var currentState = history.state;
    for (const key in currentState) {
        if (currentState[key] && currentState[key].contentProducts) {
            $('.prodList[data-category="' + key + '"]').html('');
            $('.prodList[data-category="' + key + '"]').append(currentState[key].contentProducts);
            page = currentState[key].page;
        }
    }
    var $showMore = $('.js-show-more');
    if ($showMore.length) {

        $showMore.each(function () {
            var $newShowMore = $(this);
            var maxPage = $newShowMore.data('max-page');
            var url = $newShowMore.data('max-url');
            var category = $newShowMore.data('category');
            $(document).on('scroll', function () {

                if (maxPage > page && $(this).scrollTop() >= $newShowMore.position().top - 700 && !loadPage) {
                    loadPage = true;
                    $('#fountainG').show();
                    page++;

                    $.ajax({
                        url: url,
                        data: {page: page},
                        success: function (data) {
                            $(data).find('.prodList[data-category="' + category + '"] .prod-item-wrapper[data-category="' + category + '"]').each(function () {
                                $('.prodList[data-category="' + category + '"]').append(this);

                            });

                            var state = {};

                            state[category] = {
                                contentProducts: $('.prodList[data-category="' + category + '"]').html(),
                                page: page
                            };

                            history.replaceState(state, location.href, location.href);

                            loadPage = false;
                            $('#fountainG').hide();
                        }
                    })

                }
            });
        })
    }

    $('.goBack').on('click', function () {
        if (history.length > 2) {
            window.history.go(-1);
            return false;
        }
    });

});


scrollToTop();
futureDate();

function validatePhone(phoneNumber) {
    var phoneNumberPattern = /((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{8,10}/;
    return phoneNumberPattern.test(phoneNumber);
}

var $sendForm = $('.js-send-form'),
    $thanks = $('.js-thanks'),
    $thanksModal = $('.thanks-modal'),
    $closeThanksBtn = $('.js-close-thanks');

/*$sendForm.each(function () {
 var $this = $(this);
 if ($this.data('form-type') === 'main-banner') {
 $this.submit(function (t) {
 t.preventDefault();
 var $cphone = $this.find('.js-phone'),
 $cname = 'Заказ товара от: ' + $this.find('.js-name').val(),
 $title = $this.find('.js-title').val(),
 $price = $this.find('.js-price').val(),
 $size = $this.find('.js-size[type=radio]:checked').attr('data-size'),
 $productId = $this.find('.js-product-id').val(),
 $button = $this.find('.js-btn');
 if (validatePhone($cphone.val()) == true) {
 $cphone.removeAttr('style');
 var order = 'cphone=' + $cphone.val() + '&iname=' + $cname + '&ititle=' + $title + '&iprice=' + $price + '&ipriceTotal=' + $price + '&prid=' + $productId + '&isize=' + $size;
 $.ajax({
 url: 'index.php?route=checkout/cart/addorder',
 type: 'post',
 data: order,
 dataType: 'json',
 beforeSend: function () {
 $button.text('Отправка...');
 },
 complete: function () {
 $button.text('Купить');
 },
 success: function (json) {
 if (json['error']) {
 if (json['error']['phone']) {
 $cphone.css('border', '1px solid red');
 }
 }
 $cphone.removeAttr('style');
 $this.addClass('hidden');
 $thanks.addClass('active');
 }
 });
 } else {
 $cphone.css('border', '1px solid red');
 }
 })
 }

 if ($this.data('form-type') === 'modal-call') {
 $this.submit(function (t) {
 t.preventDefault();
 var $cphone = $this.find('.js-phone'),
 $cname = 'Заказ звонка от: ' + $this.find('.js-name').val(),
 $button = $this.find('.js-btn');
 if (validatePhone($cphone.val()) == true) {
 $cphone.removeAttr('style');
 var order = 'cphone=' + $cphone.val() + '&iname=' + $cname;
 $.ajax({
 url: 'index.php?route=checkout/cart/addorder',
 type: 'post',
 data: order,
 dataType: 'json',
 beforeSend: function () {
 $button.text('Отправка...');
 },
 complete: function () {
 $button.text('Оформить');
 },
 success: function (json) {
 if (json['error']) {
 if (json['error']['phone']) {
 $cphone.css('border', '1px solid red');
 }
 }
 $cphone.removeAttr('style');
 $.magnificPopup.close();
 $.magnificPopup.open({
 items: {
 src: '#thanksModal',
 type: 'inline'
 }
 })
 }
 });
 } else {
 $cphone.css('border', '1px solid red');
 }
 })
 }
 });*/


$closeThanksBtn.click(function () {
    $thanks.removeClass('active');
    $sendForm.removeClass('hidden');
});

var getCartAddedNewProduct = function ($product_id, callback) {
    $.post('/?route=checkout/checkout/single', {product_id: $product_id}, function (response) {
        callback(response);
    });
};

var $basketCountProducts = $('.js-basket-count-products'),
    productsCountInCart = $('#cartModal').find('.js-prod-cart-item').length;

$basketCountProducts.html(productsCountInCart);

$(document).on('click', '.js-btn-buy', function (e) {
    e.preventDefault();
    var $buyBtn = $(this),
        $form = $buyBtn.closest('form'),
        data = {
            option: {}
        };
    if ($(this).hasClass('js-size-label'))
        $(this).find('input.js-size').prop('checked', true);

    $.each($form.serializeArray(), function (key, input) {
        if (input.name === 'product_id') data[input.name] = input.value;
        else data['option'][input.name] = input.value;
    });

    $.post('/?route=checkout/cart/add', data, function (response) {
        // Error
        if (response.error !== undefined) {

        }

        // Success
        if (response.success !== undefined) {
            getCartAddedNewProduct(data.product_id, function (productIncart) {
                var product = productIncart.product;
                $('#cartModal').find('#cart').load('?route=common/header/info .js-prod-cart-item');
                setTimeout(function() {
                    $.magnificPopup.open({
                        items: {
                            src: '#cartModal'
                        },
                        callbacks : {
                            beforeOpen : function(){
                                var itemsCount = $('#cartModal').find('.js-prod-cart-item').length;
                                $basketCountProducts.html(itemsCount);
                            }
                        }
                    });
                    jcf.replaceAll();
                    totalPrice();
                }, 200)
            });
        }
    });
});

$(document).on('submit', '.jq-send-form', function (e) {
    e.preventDefault();

    var $form = $(this),
        tempData = {},
        data = [];

    $.each($form.serializeArray(), function (key, input) {
        tempData[input.name] = input.value;
    });

    data.push(tempData);

    addOrder(data, function (response) {
        console.log(response);
    });
});

$(document).on('submit', '.jqs-send-form', function (e) {
    e.preventDefault();
    var $form = $(this),
        data = {products: {}};


    $.each($form.serializeArray(), function (index, input) {
        if (input.name.indexOf('products[') > -1) {
            var slitedInput = input.name.split(']['),
                productId = slitedInput[0].replace('products[', ''),
                fieldName = slitedInput[1].replace(']', '');

            if (data.products[productId] === undefined)
                data.products[productId] = {};

            data.products[productId][fieldName] = input.value;
        } else {
            data[input.name] = input.value;
        }

    });

    console.log(data);

    addOrder(data, function (response) {
        console.log(response);

    });

    $.magnificPopup.close({
        items: {
            src: '#cartModal'
        }
    });
    $.magnificPopup.open({
        items: {
            src: '#thanks'
        }
    });
});

function addOrder(data, callback) {
    $.ajax({
        url: 'index.php?route=checkout/confirm/addFromMain',
        type: 'post',
        data: data,
        dataType: 'json',
        success: function (response) {
            callback(response);
        }
    });

}

// Расчёт полной стоимости заказа и стоимости отдельных товаров в зависимости от их количества
function totalPrice() {
    var $form = $('#cartModal'),
        $items = $form.find('.js-prod-cart-item'),
        $totalPriceSpan = $form.find('.js-total-price'),
        $totalPriceInput = $form.find('.js-total-price-input'),
        totalPrice = 0;

    $items.each(function () {
        var price = parseInt($(this).find('.js-item-price').html()),
            count = parseInt($(this).find('.js-item-count').val());
        totalPrice += price;
    });
    $totalPriceSpan.html(totalPrice + ' <span class="rubl"> </span>');
    $totalPriceInput.val(totalPrice);
}

function itemPrice(item) {
    var count = item.find('.js-item-count').val(),
        priceSpan = item.find('.js-item-price'),
        price = item.find('.js-hidden-input-item-price').val(),
        totalPrice = 0;
    totalPrice += count * price;
    priceSpan.html(totalPrice + ' <span class="rubl"> </span>')
}

//Удаление товара
function removeItem(item) {
    var $count = item.find('.js-item-count'),
        cart_id = item.attr('data-cart-id'),
        itemsCount = $('#cartModal').find('.js-prod-cart-item').length;
    if (itemsCount > 1) {
        if (($count.val() < 1)) {
            item.remove();
            $.ajax({
                url: 'index.php?route=checkout/cart/remove',
                type: 'post',
                data: 'key=' + cart_id,
                dataType: 'json',
                success: function () {
                    $basketCountProducts.html(itemsCount-1);
                }
            });
        }
        // Удалить товар из списка и закрыть корзину, если товар единственный
    } else if (itemsCount === 1) {
        if (($count.val() < 1)) {
            $.magnificPopup.close({
                items: {
                    src: '#cartModal'
                }
            });
            $.ajax({
                url: 'index.php?route=checkout/cart/remove',
                type: 'post',
                data: 'key=' + cart_id,
                dataType: 'json',
                success: function () {
                    $basketCountProducts.html(itemsCount-1);
                    item.remove();
                }
            });

        }
    }
}


//Пересчёт общей суммы и стомости товара при увеличении количества товаров
$(document).on('click', '.js-plus-count', function () {
    var $count = $(this).siblings('.js-item-count'),
        $item = $(this).closest('.js-prod-cart-item');

    $count.val(parseInt($count.val()) + 1);
    $count.change();
    itemPrice($item);
    totalPrice();
});

// Уменьшение количества товаров по клику на минус
$(document).on('click', '.js-minus-count', function () {
    var $count = $(this).siblings('.js-item-count'),
        $item = $(this).closest('.js-prod-cart-item');

    $count.val(parseInt($count.val()) - 1);
    $count.change();
    itemPrice($item);
    removeItem($item);
    totalPrice();
});

// Пересчёт стоимости при ручном вводе количества товаров
$(document).on('focusout', '.js-item-count', function () {
    var $item = $(this).closest('.js-prod-cart-item');

    itemPrice($item);
    removeItem($item);
    totalPrice();
});

// Расчёт итоговой суммы при клике на кнпоку, вызывающую корзину
$(document).on('click', '.link-basket', function () {
    totalPrice();
    jcf.replaceAll();
});


//Изменение итоговой стоимости, если выбрана доставка по России
$(document).on('click', '.js-delivery-russian', function () {
    var $form = $('#cartModal'),
        $totalPriceSpan = $form.find('.js-total-price'),
        $totalPriceInput = parseInt($form.find('.js-total-price-input').val());
    $totalPriceSpan.html(parseInt($totalPriceInput) + 390 + ' <span class="rubl"> </span>');
    $totalPriceInput.val()
});

// Сохранение преждней стоимости, если доставка по России не выбрана
$(document).on('click', '.js-delivery-default', function () {
    var $form = $('#cartModal'),
        $totalPriceSpan = $form.find('.js-total-price'),
        $totalPriceInput = $form.find('.js-total-price-input').val();
    $totalPriceSpan.html($totalPriceInput + ' <span class="rubl"> </span>');
});

/*
function customerValues() {
    var $form = $('#cartModal'),
        $customerName = $form.find('#input-name'),
        $customerPhone = $form.find('#input-phone');
    $customerName.on('focusout', function () {
        $(this).value($(this.val()))
    });
    $customerPhone.on('focusout', function () {
        $(this).value($(this.val()))
    });
}

customerValues();*/
