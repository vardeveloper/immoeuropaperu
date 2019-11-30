<div class="span3 sidebar-wrap">
    <aside class="sidebar">
        <section class="widget">
            <h3 class="title">Propiedades</h3>
            <ul class="featured-properties">
                {foreach from=$productos item=producto}
                <li>
                    <figure>
                        <a href="{$smarty.const.WEB_ROOT}/inmueble/{$producto->pro_key}">
                            <img src="{$producto->imagen}"  alt="{$producto->pro_nombre}">
                        </a>
                    </figure>
                    <h4><a href="{$smarty.const.WEB_ROOT}/inmueble/{$producto->pro_key}" title="{$producto->pro_nombre}">{$producto->pro_nombre}</a></h4>
                    <p>{$producto->descripcion} <a href="{$smarty.const.WEB_ROOT}/inmueble/{$producto->pro_key}">Ver mas</a></p>
                    <span class="price">$ {$producto->pro_precio} {if $producto->pro_tipo eq 'alquiler'}<small>por mes</small>{/if} </span> 
                </li>
                {/foreach}
            </ul>
        </section>
    </aside>
</div>
