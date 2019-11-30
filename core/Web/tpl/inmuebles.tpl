<div class="page-head" style="background-repeat: no-repeat;background-position: center top;background-image: url('{$smarty.const.WEB_ROOT}/images/temp-images/page-head-image.jpg'); ">
    <div class="container">
        <div class="wrap clearfix">
            <h1 class="page-title"><span>Inmuebles</span></h1>
            <!--<p>Properties Listing in Grid Layout</p>-->
        </div>
    </div>
</div>

<!-- Content -->
<div class="container contents lisitng-grid-layout">
    <div class="row">
        <div class="span9 main-wrap">

            <!-- Main Content -->
            <div class="main">
                <section class="listing-layout property-grid">

                    <h3 class="title-heading">{$categoria}</h3>

                    <div class="list-container clearfix">
                        
                        {foreach from=$productos item=producto}
                        <article class="property-item clearfix">
                            <figure>
                                <a href="{$smarty.const.WEB_ROOT}/inmueble/{$producto->pro_key}" title="{$producto->pro_nombre}">
                                    <img src="{$producto->imagen}" class="attachment-grid-view-image wp-post-image" alt="{$producto->pro_nombre}" title="{$producto->pro_nombre}">
                                </a>
                                <figcaption> en {$producto->pro_tipo} </figcaption>
                            </figure>
                            <h4>
                                <a href="{$smarty.const.WEB_ROOT}/inmueble/{$producto->pro_key}" title="{$producto->pro_nombre}">{$producto->pro_nombre}</a>
                            </h4>
                            <p>{$producto->descripcion} <a class="more-details" href="{$smarty.const.WEB_ROOT}/inmueble/{$producto->pro_key}"> ver detalle <i class="icon-caret-right"></i></a></p>
                            <span>$ {$producto->pro_precio}  {if $producto->pro_tipo eq 'alquiler'}<small>por mes</small>{/if}  </span> 
                        </article>
                        {/foreach}
                        
                    </div>
                    <div class="pagination">
                        {$pagination}
                    </div>
                    
                </section>

            </div><!-- End Main Content -->
        </div> <!-- End span9 -->

        {$col_left}

    </div><!-- End contents row -->
</div>
<!-- End Content -->