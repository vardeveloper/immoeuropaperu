<div id="home-flexslider" class="clearfix">
    <div class="flexslider">
        <ul class="slides">
            {foreach from=$banners item=ba}
            <li>
                <!--div class="desc-wrap">
                    <div class="slide-description">
                        <h3><a href="#">1200 Anastasia Avenue, Coral Gables</a></h3>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut&hellip;</p>
                        <span>$625,000 </span>
                        <a href="#" class="know-more">Know More</a>
                    </div>
                </div-->
                <a href="#"><img src="{$smarty.const.BASE_WEB_ROOT}/svc/get-img/banner-banner_{$ba->ba_id}" alt="{$ba->ba_titulo}"></a>
            </li>
            {/foreach}
        </ul>
    </div>
</div>