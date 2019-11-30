<div class="page-head" style="background-repeat: no-repeat;background-position: center top;background-image: url('{$smarty.const.WEB_ROOT}/images/temp-images/page-head-image.jpg'); ">
    <div class="container">
        <div class="wrap clearfix">
            <h1 class="page-title"><span>Contacto</span></h1>
            <p>Si desea que tu propiedad se venda, alquile, o necesitan una administradora, no dude en ponerse en contacto con nosotros.</p>
        </div>
    </div>
</div>

<!-- Content -->
<div class="container contents single">
    <div class="row">
        <div class="span9 main-wrap">
            <!-- Main Content -->
            <div class="main">
                <div class="inner-wrapper">
                    <article id="post-122" class="post-122 page type-page status-publish hentry clearfix">
                    </article>
                    <div class="map-container clearfix">
                        <div id="map_canvas"></div>
                        {literal}
                        <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
                        <script type="text/javascript">
                            // Google Map
                            function initialize()
                            {
                                var geocoder = new google.maps.Geocoder();
                                var map;
                                var latlng = new google.maps.LatLng(-12.388633, -76.778702);
                                var infowindow = new google.maps.InfoWindow();
                                var myOptions = {
                                    zoom: 17,
                                    mapTypeId: google.maps.MapTypeId.ROADMAP
                                };

                                map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

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
                    <section class="contact-details clearfix">
                        <h3>Dirección</h3>
                        <address style="width: 230px">
                            C/Murillo 131 Resd. Mirador 1 <br>
                            Urb. El Chaparral 03184 Torrevieja <br>
                            Alicante - España
                        </address>
                        <ul class="contacts-list">
                            <li class="mobile"> Celular España: (+34) 643 090533 </li>
                            <li class="mobile"> Celular Perú: (+51) 951 724 622 </li>
                            <li class="email"> Email: immo.europa.peru@gmail.com</li>
                        </ul>
                    </section>
                    <section id="contact-form">
                        <h3 class="form-heading">Send us a message</h3>
                        <form class="contact-form" method="post" action="{$smarty.const.WEB_ROOT}/svc/enviar-contactenos">
                            <p>
                                <label for="name">Name</label>
                                <input type="text" name="name" id="name" class="required" title="* Please provide your name">
                            </p>

                            <p>
                                <label for="email">Email</label>
                                <input type="text" name="email" id="email" class="email required" title="* Please provide a valid email address">
                            </p>

                            <p>
                                <label for="subject">Subject</label>
                                <input type="text" name="subject" id="subject">
                            </p>

                            <p>
                                <label for="comment">Message</label>
                                <textarea name="message" id="comment" class="required" title="* Please provide your message"></textarea>
                            </p>

                            <p>
                                <input type="submit" value="Send Message" id="submit" class="real-btn" name="submit">
                                <img src="images/ajax-loader.gif" id="contact-loader" alt="Loading...">
                                <input type="hidden" name="action" value="send_message">
                                <input type="hidden" name="target" value="robot@psdtohtmlwp.com">
                            </p>
                            <div class="error-container"></div>
                            <div id="message-sent">{$envio}</div>
                        </form>
                    </section>

                </div>
            </div><!-- End Main Content -->

        </div> <!-- End span9 -->

        {$col_left}
        
    </div><!-- End contents row -->

</div><!-- End Content -->