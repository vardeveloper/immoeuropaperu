<section class="featured-properties-carousel clearfix">
    <div class="narrative">
        <h3>Propiedades Destacadas</h3>
        <p>Ver una lista de propiedades destacadas.</p>
    </div>
    <div class="carousel es-carousel-wrapper">
        <div class="es-carousel">
            <ul class="clearfix">
                {foreach from=$productos item=producto}
                <li>
                    <figure>
                        <a href="{$smarty.const.WEB_ROOT}/inmueble/{$producto->pro_key}" title="{$producto->pro_nombre}">
                            <img  src="{$producto->imagen}"  alt="{$producto->pro_nombre}" title="{$producto->pro_nombre}">
                        </a>
                    </figure>
                    <h4><a href="{$smarty.const.WEB_ROOT}/inmueble/{$producto->pro_key}" title="{$producto->pro_nombre}">{$producto->pro_nombre}</a></h4>
                    <p>{$producto->descripcion} <a href="#"> Ver mas </a> </p>
                    <span class="price">{$producto->pro_tipo_moneda}{$producto->pro_precio}</span>
                </li>
                {/foreach}
            </ul>
        </div>
        <div class="es-nav"><span class="es-nav-prev"></span><span class="es-nav-next"></span></div>
    </div>
</section>