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

function sortAsc() {
    var $container = $('.js-sortable'),
        $products = $container.find('.product-item');

    $products.sort(function (a, b) {
        var an = $(a).attr('data-price'),
            bn = $(b).attr('data-price');
        console.log(an);
        if (an && bn) {
            return an.toUpperCase().localeCompare(bn.toUpperCase());
        }
        return 0;
    });
    $products.detach().appendTo($container);
}

function sortDesc() {
    var $container = $('.js-sortable'),
        $products = $container.find('.product-item');

    $products.sort(function (a, b) {
        var an = $(a).attr('data-price'),
            bn = $(b).attr('data-price');
        if (an && bn) {
            return bn.toUpperCase().localeCompare(an.toUpperCase());
        }
        return 0;
    });
    $products.detach().appendTo($container);
}

futureDate();

$('.js-sort').change(function () {
    var $option = $( "select option:selected" );
    if ($option.hasClass('js-sort-asc'))
        sortAsc();
    if ($option.hasClass('js-sort-desc'))
        sortDesc();
});