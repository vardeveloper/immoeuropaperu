<div class="page-head" style="background-repeat: no-repeat;background-position: center top;background-image: url('{$smarty.const.WEB_ROOT}/images/temp-images/page-head-image.jpg'); ">
    <div class="container">
        <div class="wrap clearfix">
            <h1 class="page-title"><span>Noticias</span></h1>
            <!--<p>Rental Properties</p>-->
        </div>
    </div>
</div>

<!-- Content -->
<div class="container contents lisitng-grid-layout">
    <div class="row">
        <div class="span9 main-wrap">

            <!-- Main Content -->
            <div class="main" style="margin: 0">

                <section class="listing-layout">

                    <div class="list-container clearfix">
                        {foreach from=$noticias item=noticia}
                        <div class="span6 ">
                            <article class="property-item clearfix">
                                <h4><a href="{$smarty.const.WEB_ROOT}/noticia/{$noticia->not_key}" title="{$noticia->not_titulo}">{$noticia->not_titulo}</a></h4>
                                <figure>
                                    <a href="{$smarty.const.WEB_ROOT}/noticia/{$noticia->not_key}" title="{$noticia->not_titulo}">
                                        <img src="{$noticia->imagen}" class="attachment-property-thumb-image wp-post-image" alt="15421 Southwest 39th Terrace" title="15421 Southwest 39th Terrace">
                                    </a>
                                </figure>
                                <div class="detail">
                                    <p>{$noticia->descripcion}</p>
                                    <a class="more-details" href="{$smarty.const.WEB_ROOT}/noticia/{$noticia->not_key}">ver detalle<i class="icon-caret-right"></i></a>
                                </div>
                            </article>
                        </div>
                        {/foreach}
                    </div>

                    <div class="pagination">
                        {$pagination}
                    </div>
                    
                </section>

            </div><!-- End Main Content -->

        </div> <!-- End span9 -->

        {$col_left}

    </div>

</div>
