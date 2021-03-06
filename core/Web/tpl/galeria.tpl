<div class="page-head" style="background-repeat: no-repeat;background-position: center top;background-image: url('{$smarty.const.WEB_ROOT}/images/temp-images/page-head-image.jpg'); ">
    <div class="container">
        <div class="wrap clearfix">
            <h1 class="page-title"><span>Galeria</span></h1>
            <!--<p>Look for your desired property more efficiently</p>-->
        </div>
    </div>
</div>
<div class="container contents lisitng-grid-layout">
    <div class="row">
        <div class="span12 main-wrap">
            <div class="main">
                <section class="listing-layout">
                    <h3 class="title-heading">{$galeria}</h3>
                    <div id="gallery-container">
                        <div class="gallery-4-columns isotope clearfix">
                            {foreach from=$fotos item=foto}
                            <div class="gallery-item isotope-item on-rent ">
                                <figure>
                                    <div class="media_container">
                                        <a class="swipebox zoom" href="{$smarty.const.WEB_ROOT}/svc/get-img/fotos-fot_{$foto->fot_id}" title="{$foto->fot_titulo}"></a>
                                    </div>
                                    <img class="img-border" src="{$smarty.const.WEB_ROOT}/svc/get-img/fotos-fot_{$foto->fot_id}" alt="{$foto->fot_titulo}">
                                </figure>
                                <h5 class="item-title">{$foto->fot_titulo}</h5>
                            </div>
                            {/foreach}
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
</div>