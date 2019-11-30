<div class="page-head" style="background-repeat: no-repeat;background-position: center top;background-image: url('{$smarty.const.WEB_ROOT}/images/temp-images/page-head-image.jpg'); ">
    <div class="container">
        <div class="wrap clearfix">
            <h1 class="page-title"><span>Galerias</span></h1>
            <!--p>Look for your desired property more efficiently</p-->
        </div>
    </div>
</div>
<div class="container contents lisitng-grid-layout">
    <div class="row">
        <div class="span12 main-wrap">
            <div class="main">
                <section class="listing-layout">
                    <!--h3 class="title-heading"></h3-->
                    <div id="gallery-container">
                        <div class="gallery-2-columns isotope clearfix">
                            {foreach from=$galerias item=gal}
                            <div class="gallery-item isotope-item on-rent ">
                                <figure>
                                    <div class="media_container">
                                        <a class="link" href="{$smarty.const.WEB_ROOT}/galeria/{$gal.key}"></a>
                                    </div>
                                    <img class="img-border" src="{$gal.imagen}" alt="{$gal.nombre}">
                                </figure>
                                <h5 class="item-title"><a href="{$smarty.const.WEB_ROOT}/galeria/{$gal.key}" title="{$gal.nombre}">{$gal.nombre}</a></h5>
                            </div>
                            {/foreach}
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
</div>