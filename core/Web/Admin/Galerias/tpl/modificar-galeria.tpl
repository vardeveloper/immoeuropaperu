<h2 class="span contenttitle w-93">Administrador de Galerias </h2>
<div class="span adm_datahead w-93">
    <a class="adm_btn span adm_btn2" href="{$smarty.const.WEB_ROOT}/admin/galerias">Galerias</a>
    <a class="adm_btn span adm_btn2" href="{$smarty.const.WEB_ROOT}/admin/galerias/nueva-galeria">Nueva Galeria</a>
</div>
<p class="titulo">Modificar Galeria</p>
<p class="subtitulo">Ingresar Datos</p>
<form class="forminsert" action="{$smarty.const.WEB_ROOT}/admin/galerias/svc/actualizar-galeria/{$galeria->gal_id}" method="post"  enctype="multipart/form-data" id="form1" >
    <table class="stats" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td class="rig">Título : </td>
            <td class="let">
                <input type="text" name="gal_titulo" id="gal_titulo" class="text w-40 span" value="{$galeria->gal_titulo}" />
                <p class="error">{$error.gal_titulo}</p>
            </td>
        </tr>
        <!--tr>
            <td class="rig">Imagen Actual : </td>
            <td class="let"><img src="{$imagen}" alt=""/></td>
        </tr>
        <tr>
            <td class="rig">Imagen : </td>
            <td class="let"><input type="file" name="imagen"/>jpg (600 x 450)</td>
        </tr-->
        <tr>
            <td></td>
            <td><input class="adm_btn" name="submit" type="submit" id="submit" value="Guardar"/></td>
        </tr>
    </table>
</form>
<div class="span adm_datafooter w-93">
    {$footermsg}{$navegacion}
</div>