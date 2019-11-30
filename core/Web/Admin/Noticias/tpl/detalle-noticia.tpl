<h2 class="span contenttitle w-93">Administrador de Noticias</h2>
<div class="span adm_datahead w-93">
    <a class="adm_btn span adm_btn2" href="{$smarty.const.WEB_ROOT}/admin/noticias">Noticias</a>
    <a class="adm_btn span adm_btn2" href="{$smarty.const.WEB_ROOT}/admin/noticias/nueva-noticia">Crear Noticia</a>
</div>
<div id="men2">
    <p class="titulo">Detalle de la Noticia</p>
    <div class="detalle">
        <p class="subtitulo">Información General</p>
        <div class="span w-47">
            <p class="des"><span class="ti">Titulo : </span> {$noticia.not_titulo}</p>
            <div class="des"><span class="ti">Descripcion : </span> {$noticia.not_descripcion}</div>
        </div>
        <div class="span w-50">
            <div class="des img"><img src="{$noticia.imagen}" alt=""/></div>
        </div>
    </div>
</div>
<div class="span adm_datafooter w-93">
    {$footermsg}{$navegacion}
</div>