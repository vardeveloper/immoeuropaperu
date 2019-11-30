<div class="span3 sidebar-wrap">
    <aside class="sidebar">
        <section class="widget">
            <h3 class="title">Últimas Noticias</h3>
            <ul>
                {foreach from=$noticias item=noticia}
                <li>
                    <a href="{$smarty.const.WEB_ROOT}/noticia/{$noticia->not_key}" title="{$noticia->not_titulo}">{$noticia->not_titulo}</a>
                </li>
                {/foreach}
            </ul>
        </section>    
    </aside>
</div>