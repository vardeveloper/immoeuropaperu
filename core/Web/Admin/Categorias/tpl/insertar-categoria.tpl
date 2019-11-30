<h2 class="span contenttitle w-98">Administrador de Categorias</h2>
<div class="span adm_datahead w-98">
    <a class="adm_btn span adm_btn2" href="{$smarty.const.WEB_ROOT}/admin/categorias">Categorías</a>
    <a class="adm_btn span adm_btn2" href="{$smarty.const.WEB_ROOT}/admin/categorias/nueva-categoria">Nueva Categoría</a>
</div>
<p class="titulo">Crear Nueva Categoria </p>
<p class="subtitulo">Ingresar Datos</p>
<form class="forminsert" action="{$smarty.const.WEB_ROOT}/admin/categorias/svc/guardar-categoria" method="post" enctype="multipart/form-data">
    <table class="stats">
        <tr>
            <td class="rig">Nombre :</td>
            <td class="let">
                <input type="text" name="cat_nombre" value="{$post.cat_nombre}" class="text w-40 span"/>
                <p class="error">{$error.cat_nombre}</p>
            </td>
        </tr>
        <!--tr>
            <td class="rig">Imagen JPG (990px × 193px) :</td>
            <td class="let">
                <input name="imagen" type="file" class="span" />
                <p class="error">{$error.imagen}</p>
            </td>
        </tr-->
    </table>
    <table class="stats">
        <tr>
            <td class="rig">&nbsp;</td>
            <td class="let">
                <input class="adm_btn" name="btn_submit" type="submit" value="Guardar" />
                <input class="adm_btn" name="btn_reset" type="reset" value="Borrar" />
            </td>
        </tr>
    </table>
</form>
<div class="span adm_datafooter w-98">
    {$footermsg}{$navegacion}
</div>