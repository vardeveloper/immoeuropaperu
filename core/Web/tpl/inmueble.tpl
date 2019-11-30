<div class="page-head" style="background-repeat: no-repeat;background-position: center top;background-image: url('{$smarty.const.WEB_ROOT}/images/temp-images/page-head-image.jpg'); ">
    <div class="container">
        <div class="wrap clearfix">
            <h1 class="page-title"><span>Inmueble</span></h1>
            <!--<p>700 Front Street, Key West, FL</p>-->
        </div>
    </div>
</div>

<!-- Content -->
<div class="container contents lisitng-grid-layout">

    <div class="row">

        <div class="span9 main-wrap">

            <!-- Main Content -->
            <div class="main">

                <section id="overview">

                    <div id="property-detail-flexslider" class="clearfix">
                        <div class="flexslider">

                            <ul class="slides">
                                <li data-thumb="{$smarty.const.WEB_ROOT}/svc/get-img/productos-pro_{$producto->pro_id}">
                                    <a href="{$smarty.const.WEB_ROOT}/svc/get-img/productos-pro_{$producto->pro_id}" class="swipebox">
                                        <img src="{$smarty.const.WEB_ROOT}/svc/get-img/productos-pro_{$producto->pro_id}" alt="{$producto->pro_nombre}">
                                    </a>
                                </li>
                                {$imagenes}
                            </ul>

                        </div>
                    </div>

                    <article class="property-item clearfix">

                        <div class="wrap clearfix">
                            <h4 class="title">{$producto->pro_nombre}</h4>
                            <h5 class="price">
                                <span class="status-label">
                                    en {$producto->pro_tipo}
                                </span>
                                <span>
                                    ${$producto->pro_precio} {if $producto->pro_tipo eq 'alquiler'}<small>por mes</small>{/if}
                                </span>
                            </h5>
                        </div>

                        <div class="property-meta clearfix">
                            {foreach from=$producto->categories item=category}
                            <span>{$category->cat_nombre}</span>
                            {/foreach}
                        </div>

                        <div class="content clearfix">
                            {$producto->pro_descripcion}
                        </div>

                    </article>

                    {if $producto->pro_video}
                    <div class="property-video">
                        <span class="video-label">Property Video</span>
                        <a href="http://vimeo.com/70301553" class="pretty-photo" title="Video">
                            <div class="play-btn"></div>
                            <img src="{$smarty.const.WEB_ROOT}/images/temp-images/property-video-image.jpg" alt="700 Front Street, Key West, FL">
                        </a>
                    </div>
                    {/if}

                    <!--
                    <div class="map-wrap clearfix">
                        <span class="map-label">Property Map</span>
                        <div id="property_map"></div>
                        {literal}
                        <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
                        <script type="text/javascript">
                            // Google Map
                            function initialize()
                            {
                                var geocoder = new google.maps.Geocoder();
                                var map;
                                var latlng = new google.maps.LatLng(-37.817917, 144.965065);
                                var infowindow = new google.maps.InfoWindow();
                                var myOptions = {
                                    zoom: 17,
                                    mapTypeId: google.maps.MapTypeId.ROADMAP
                                };

                                map = new google.maps.Map(document.getElementById("property_map"), myOptions);

                                geocoder.geocode({'location': latlng},
                                function(results, status) {
                                    if (status == google.maps.GeocoderStatus.OK)
                                    {
                                        map.setCenter(results[0].geometry.location);
                                        var marker = new google.maps.Marker({
                                            map: map,
                                            position: results[0].geometry.location
                                        });
                                        //alert(results[0].formatted_address);
                                        //infowindow.setContent(results[0].formatted_address);
                                        //infowindow.open(map, marker);
                                    }
                                    else
                                    {
                                        alert("Geocode was not successful for the following reason: " + status);
                                    }
                                });

                            }

                            initialize();
                        </script>
                        {/literal}
                    </div>
                    -->

                </section>

            </div><!-- End Main Content -->

        </div> <!-- End span9 -->

        {$col_left}

    </div><!-- End contents row -->

</div><!-- End Content -->