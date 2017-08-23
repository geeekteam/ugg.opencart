<?=$modules[0];?>
<?=$modules[1];?>
<?=$modules[2];?>
<?=$modules[3];?>
<?=$modules[4];?>
<?=$modules[5];?>
<?=$modules[6];?>
<?=$modules[7];?>

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

<?=$modules[8];?>