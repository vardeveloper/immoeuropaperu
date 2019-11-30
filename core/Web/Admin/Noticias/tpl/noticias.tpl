n<h2 class="span contenttitle w-98">Administrador de Secciones | Total : {$total}</h2>
<div class="span adm_datahead w-98">
    <a class="adm_btn span adm_btn2" href="{$smarty.const.WEB_ROOT}/admin/noticias">Noticias</a>
    <a class="adm_btn span adm_btn2" href="{$smarty.const.WEB_ROOT}/admin/noticias/nueva-noticia">Crear Noticia</a>
</div>
<table id="simple" class="data w-98" border="0" cellpadding="0" cellspacing="0">
    <thead>
        <tr>
            <td class="w-15 c">Imagen</td>
            <td class="w-40">Noticia</td>
            <td class="w-15">Fecha Registro</td>
            <td class="w-15" colspan="3"></td>
        </tr>
    </thead>
    <tbody>
        {foreach from=$noticias item=noticia}
        <tr class="{$noticia.bgcolor}">
            <td class="w-12 c"><img src="{$smarty.const.BASE_WEB_ROOT}/svc/get-img/noticias-not_{$noticia.id}/150" /></td>
            <td class="w-40 t"><b>{$noticia.html2}</b> <br/><br/> {$noticia.descripcion} </td>
            <td class="w-12 t bld">{$noticia.fecha|date_format:"%d/%m/%Y, %I:%M %p"}</td>
            <td class="w-5 t c">{$noticia.bloquear}</td>
            <td class="w-5 t c">{$noticia.modificar}</td>
            <td class="w-5 t c">{$noticia.eliminar}</td>
        </tr>
        {/foreach}
    </tbody>
</table>
<div class="span adm_datafooter w-98">
    {$footermsg}{$navigator}
</div>
{literal}
<script type="text/javascript">
    window.addEvent('load', function() {
        var els = $$('a.adm_alert_delete');
        alertBox = new SexyAlertBox();
        els.each(function(el){
            el.addEvent('click', function(e){
                e.stop();
                link=el.href;
                alertBox.confirm('<p>¿Está seguro que desea eliminar esta Noticia?<\/p>',{
                    onComplete: function(returnvalue) {
                        if(returnvalue){
                            document.location.href=link;
                        }
                    }
                });
            });
        });
    });
</script>
{/literal}