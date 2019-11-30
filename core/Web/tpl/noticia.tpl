<div class="page-head" style="background-repeat: no-repeat;background-position: center top;background-image: url('{$smarty.const.WEB_ROOT}/images/temp-images/page-head-image.jpg'); ">
    <div class="container">
        <div class="wrap clearfix">
            <h1 class="page-title"><span>Noticia</span></h1>
            <!--<p>Check out market updatest</p>-->
        </div>
    </div>
</div>

<!-- Content -->
<div class="container contents single">
    <div class="row">
        <div class="span9 main-wrap">
            <!-- Main Content -->
            <div class="main" style="margin: 0">

                <div class="inner-wrapper">
                    
                    <article class="format-image">
                        <header>
                            <h3 class="post-title">{$noticia->not_titulo}</h3>
                            <div class="post-meta image-meta thumb-exist">
                                <span> Posted on  <span class="date"> {$noticia->not_fecha|date_format:"%d/%m/%Y, %I:%M %p"} </span></span>
                            </div>
                        </header>
                        <figure>
                            <img src="{$smarty.const.WEB_ROOT}/svc/get-img/noticias-not_{$noticia->not_id}" class="attachment-post-featured-image wp-post-image" alt="{$noticia->not_titulo}" title="{$noticia->not_titulo}">
                        </figure>
                        <p>{$noticia->not_descripcion}</p>
                    </article>

                </div>

            </div><!-- End Main Content -->

        </div> <!-- End span9 -->

        {$wgt_noticias}

    </div><!-- End contents row -->

</div><!-- End Content -->
