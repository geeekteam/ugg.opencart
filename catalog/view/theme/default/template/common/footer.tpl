</div>
<footer id="footer" class="footer">
    <div class="container">
        <div class="footer-logo">
            <?php if ($_SERVER['REQUEST_URI'] == '/'): ?>
                <a><img src="/image/logo2.png" alt=""></a>
             <?php else: ?>
                <a href="/"><img src="/image/logo2.png" alt=""></a>
            <?php endif;?>
            <span>2017 — Все права защищены</span>
        </div>
        <div class="footer-link">
            <div class="footer-link-bl">
                <span>категории</span>
                <ul class="list-footer-link">
                    <li>
                        <?php if (strpos($_SERVER['REQUEST_URI'], 'rasprodazha')): ?>
                            <a class="active">Распродажа</a>
                        <?php else: ?>
                            <a href="/rasprodazha">Распродажа</a>
                        <?php endif; ?>
                    </li>
                    <li>
                        <?php if (strpos($_SERVER['REQUEST_URI'], 'zhenskie-ugg')): ?>
                            <a class="active">Женские UGG</a>
                        <?php else: ?>
                            <a href="/zhenskie-ugg">Женские UGG</a>
                        <?php endif; ?>
                    </li>
                    <li>
                        <?php if (strpos($_SERVER['REQUEST_URI'], 'muzhskie-ugg')): ?>
                            <a class="active">Мужcкие UGG</a>
                        <?php else: ?>
                            <a href="/muzhskie-ugg">Мужcкие UGG</a>
                        <?php endif; ?>
                    </li>
                    <li>
                        <?php if (strpos($_SERVER['REQUEST_URI'], 'detskie-ugg')): ?>
                            <a class="active">Детские UGG</a>
                        <?php else: ?>
                            <a href="/detskie-ugg">Детские UGG</a>
                        <?php endif; ?>
                    </li>
                    <li>
                        <?php if (strpos($_SERVER['REQUEST_URI'], 'vysokie-ugg')): ?>
                            <a class="active">Высокие UGG</a>
                        <?php else: ?>
                            <a href="/vysokie-ugg">Высокие UGG</a>
                        <?php endif; ?>
                    </li>
                    <li>
                        <?php if (strpos($_SERVER['REQUEST_URI'], 'korotkie-ugg')): ?>
                            <a class="active">Короткие UGG</a>
                        <?php else: ?>
                            <a href="/korotkie-ugg">Короткие UGG</a>
                        <?php endif; ?>
                    </li>
                    <li>
                        <?php if (strpos($_SERVER['REQUEST_URI'], 'uggi-mini')): ?>
                            <a class="active">Угги Мини</a>
                        <?php else: ?>
                            <a href="/uggi-mini">Угги Мини</a>
                        <?php endif; ?>
                    </li>
                </ul>
            </div>
            <div class="footer-link-bl">
                <span>МОДЕЛИ</span>
                <ul class="list-footer-link">
                    <li>
                        <?php if (strpos($_SERVER['REQUEST_URI'], 'ugg-jimmy-choo')): ?>
                            <a class="active">Ugg Jimmy Choo</a>
                        <?php else: ?>
                            <a href="/ugg-jimmy-choo">Ugg Jimmy Choo</a>
                        <?php endif; ?>
                    </li>
                    <li>
                        <?php if (strpos($_SERVER['REQUEST_URI'], 'ugg-bailey-dylyn')): ?>
                            <a class="active">Ugg Bailey & Dylyn</a>
                        <?php else: ?>
                            <a href="/ugg-bailey-dylyn">Ugg Bailey & Dylyn</a>
                        <?php endif; ?>
                    </li>
                    <li>
                        <?php if (strpos($_SERVER['REQUEST_URI'], 'ugg-bailey-button')): ?>
                            <a class="active">Ugg Bailey Button</a>
                        <?php else: ?>
                            <a href="/ugg-bailey-button">Ugg Bailey Button</a>
                        <?php endif; ?>
                    </li>
                    <li>
                        <?php if (strpos($_SERVER['REQUEST_URI'], 'ugg-bailey-triplet')): ?>
                            <a class="active">Ugg Bailey Triplet</a>
                        <?php else: ?>
                            <a href="/ugg-bailey-triplet">Ugg Bailey Triplet</a>
                        <?php endif; ?>
                    </li>
                    <li>
                        <?php if (strpos($_SERVER['REQUEST_URI'], 'ugg-classic-mini')): ?>
                            <a class="active">Ugg Classic Mini</a>
                        <?php else: ?>
                            <a href="/ugg-classic-mini">Ugg Classic Mini</a>
                        <?php endif; ?>
                    </li>
                    <li>
                        <?php if (strpos($_SERVER['REQUEST_URI'], 'ugg-classic-short')): ?>
                            <a class="active">Ugg Classic Short</a>
                        <?php else: ?>
                            <a href="/ugg-classic-short">Ugg Classic Short</a>
                        <?php endif; ?>
                    </li>
                    <li>
                        <?php if (strpos($_SERVER['REQUEST_URI'], 'ugg-classic-sparkless')): ?>
                            <a class="active">Ugg Classic Sparkless</a>
                        <?php else: ?>
                            <a href="/ugg-classic-sparkless">Ugg Classic Sparkless</a>
                        <?php endif; ?>
                    </li>
                    <li>
                        <?php if (strpos($_SERVER['REQUEST_URI'], 'ugg-classic-tall')): ?>
                            <a class="active">Ugg Classic Tall</a>
                        <?php else: ?>
                            <a href="/ugg-classic-tall">Ugg Classic Tall</a>
                        <?php endif; ?>
                    </li>
                    <li>
                        <?php if (strpos($_SERVER['REQUEST_URI'], 'ugg-mini-mailey-bow')): ?>
                            <a class="active">Ugg Mini Bailey Bow</a>
                        <?php else: ?>
                            <a href="/ugg-mini-mailey-bow">Ugg Mini Bailey Bow</a>
                        <?php endif; ?>
                    </li>
                    <li>
                        <?php if (strpos($_SERVER['REQUEST_URI'], 'ugg-mini-fox-fur')): ?>
                            <a class="active">Ugg Mini Fox Fur</a>
                        <?php else: ?>
                            <a href="/ugg-mini-fox-fur">Ugg Mini Fox Fur</a>
                        <?php endif; ?>
                    </li>
                    <li>
                        <?php if (strpos($_SERVER['REQUEST_URI'], 'ugg-mocassin')): ?>
                            <a class="active">Ugg Mocassin</a>
                        <?php else: ?>
                            <a href="/ugg-mocassin">Ugg Mocassin</a>
                        <?php endif; ?>
                    </li>
                </ul>
            </div>
            <div class="footer-link-bl">
                <span>МАТЕРИАЛ</span>
                <ul class="list-footer-link">
                    <li><a href="/all&amp;filter=3">Eva</a></li>
                    <li><a href="/all&amp;filter=9">Кожа</a></li>
                    <li><a href="/all&amp;filter=10">Овчина</a></li>
                    <li><a href="/all&amp;filter=11">Замша</a></li>
                    <li><a href="/all&amp;filter=12">Твинфейс</a></li>
                    <li><a href="/all&amp;filter=13">UGGPURE</a></li>
                    <li><a href="/all&amp;filter=14">Защита от воды</a></li>
                </ul>
            </div>
        </div>
        <div class="footer-contact">
            <span class="footer-phone">Ежедневно 10:00 – 21:00 <span>8 (495) 256-01-63</span></span>
            <a href="#feedback" class="btn open-modal">ЗАКАЗАТЬ ЗВОНОК</a>
        </div>
        <a href="#wrapper" class="totop scrollto"></a>
    </div>
</footer>