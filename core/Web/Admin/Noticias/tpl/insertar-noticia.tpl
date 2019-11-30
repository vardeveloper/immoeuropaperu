{literal}
<script type="text/javascript">
    tinyMCE.init({
        // General options
        mode : "exact",
        elements : "not_descripcion",
        theme : "advanced",
        skin : "o2k7",
        //skin_variant : "black",
        skin_variant : "silver",

        /*plugins : "pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,wordcount,advlist,autosave",
         *plugins : "safari,spellchecker,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,imagemanager,filemanager",

            // Theme options
            theme_advanced_buttons1 : "save,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,styleselect,formatselect,fontselect,fontsizeselect",
            theme_advanced_buttons2 : "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor",
            theme_advanced_buttons3 : "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",
            theme_advanced_buttons4 : "insertlayer,moveforward,movebackward,absolute,|,styleprops,spellchecker,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,blockquote,pagebreak,|,insertfile,insertimage",*/

        plugins : "safari,spellchecker,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,imagemanager,filemanager",

        // Theme options
        theme_advanced_buttons1 : "bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,forecolor,backcolor,preview,|,styleselect,formatselect,fontselect,fontsizeselect",
        theme_advanced_buttons2 : "pastetext,pasteword,|,removeformat,|,undo,redo,|,bullist,numlist,|,link,unlink,image,code,|,tablecontrols",
        //theme_advanced_buttons3 : "",
        //theme_advanced_buttons4 : "",
        theme_advanced_toolbar_location : "top",
        theme_advanced_toolbar_align : "left",
        theme_advanced_statusbar_location : "bottom",
        height : "250",
        theme_advanced_resizing : true

    });
</script>
{/literal}
<h2 class="span contenttitle w-93">Administrador de Secciones</h2>
<div class="span adm_datahead w-93">
    <a class="adm_btn span adm_btn2" href="{$smarty.const.WEB_ROOT}/admin/noticias">Noticias</a>
    <a class="adm_btn span adm_btn2" href="{$smarty.const.WEB_ROOT}/admin/noticias/nueva-noticia">Crear Noticia</a>
</div>
<p class="titulo">Crear Nueva Contenido</p>
<p class="subtitulo">Ingresar Datos</p>
<form class="forminsert" action="{$smarty.const.WEB_ROOT}/admin/noticias/svc/guardar-noticia" method="post" enctype="multipart/form-data">
    <table class="stats">
        <tr>
            <td class="rig">Titulo :</td>
            <td class="let">
                <input type="text" name="not_titulo" id="not_titulo" value="{$post.not_titulo}" class="text w-40 span" />
                <p class="error">{$error.not_titulo}</p>
            </td>
        </tr>
        <tr>
            <td class="rig">Descripcion :</td>
            <td class="let">
                <textarea name="not_descripcion" id="not_descripcion" class="text h-10 span">{$post.not_descripcion}</textarea>
                <p style="display: inline-block">{$editor}</p>
                <p class="error">{$error.not_descripcion}</p>
            </td>
        </tr>
        <tr>
            <td class="rig">Foto  :</td>
            <td class="let"><input name="imagen" type="file"/>jpg (830 × 323)</td>
        </tr>
    </table>
    <table class="stats">
        <tr>
            <td class="rig">&nbsp;</td>
            <td class="let">
                <input class="adm_btn" name="submit" type="submit" id="submit" value="Guardar" />
                <input class="adm_btn" name="submit2" type="reset" id="submit2" value="Borrar" />
            </td>
        </tr>
    </table>
</form>
<div class="span adm_datafooter w-93">
    {$footermsg}{$navegacion}
</div>