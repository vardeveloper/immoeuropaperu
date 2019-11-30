<div class="header-wrapper">
    <div class="container">
        <header id="header" class="clearfix">
            <div id="header-top" class="clearfix">
                <h2 id="contact-email">
                    <i class="email"></i> Email : <a href="mailto:immo.europa.peru@gmail.com">immo.europa.peru@gmail.com</a>
                </h2>
                <ul class="social_networks clearfix">
                    <!--li class="facebook">
                        <a target="_blank" href="https://www.facebook.com"><i class="icon-facebook"></i></a>
                    </li-->
                </ul>
            </div>
            <div id="logo">
                <a title="" href="/">
                    <img src="{$smarty.const.WEB_ROOT}/images/logo.png" alt="">
                </a>
                <div class="tag-line"></div>
            </div>
            <div class="menu-and-contact-wrap">
                <h2  class="contact-number">
                    <!--i class="icon-phone"></i-->
                    <i class="flag-spain"></i>
                    (+34) 643 090533
                    <span class="outer-strip"></span>
                </h2>
                <h2  class="contact-number">
                    <i class="flag-peru"></i>
                    (+51) 951724622
                </h2>
                <nav class="main-menu">
                    <div class="menu-main-menu-container">
                        <ul id="menu-main-menu" class="clearfix">
                            <li class="current-menu-item current_page_item"><a href="/">Home</a></li>
                            <li><a href="#">Inmuebles</a>
                                <ul class="sub-menu">
                                    {foreach from=$categorias item=cat}
                                    <li><a href="{$smarty.const.WEB_ROOT}/inmuebles/{$cat->cat_key}">{$cat->cat_nombre}</a></li>
                                    {/foreach}
                                </ul>
                            </li>
                            <li><a href="{$smarty.const.WEB_ROOT}/noticias">Noticias</a></li>
                            <li><a href="{$smarty.const.WEB_ROOT}/galerias">Galerias</a></li>
                            <li><a href="{$smarty.const.WEB_ROOT}/contacto">Contacto</a></li>
                        </ul>
                    </div>
                </nav>
            </div>
        </header>
    </div>
</div>