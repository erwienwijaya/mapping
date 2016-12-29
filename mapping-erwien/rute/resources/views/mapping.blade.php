<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>Rute</title>

        <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Raleway', sans-serif;
                font-weight: 100;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 12px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
        </style>

        <style>
            /* Always set the map height explicitly to define the size of the div
             * element that contains the map. */
            #map {
                height: 500px;
                margin-top: 10px;
                margin-left: 10px;
                margin-right: 10px ;
                margin-bottom: 10px
            }
        </style>
    </head>
    <body style="margin-top: 20px">
        <div class="container">    
            <div class="row">
                <div class="panel panel-default">
                      <div class="panel-heading">
                        <h3 class="panel-title"><b><i class="fa fa-cogs" aria-hidden=true></i> Panel Kontrol</h3></b> 
                      </div>
                      <div class="panel-body">
                            <div class="col-md-6">
                                    <a href="/" class="btn btn-default" style="font-weight: bold;"><i class="fa fa-map-marker" aria-hidden=true></i> Buat Titik</a>

                                    <button class="btn btn-warning" style="font-weight: bold;" onclick="deleteMarkers();" ><i class="fa fa-remove" aria-hidden=true></i> Hapus Titik</button>
                                    <button class="btn btn-primary" style="font-weight: bold;" onclick="saveMarkers();"><i class="fa fa-database" aria-hidden=true></i> Simpan Rute</button>
                            </div>
                            
                            <div class="col-md-6">  
                                <select class="form-control" id="filter">
                                    <option value="0">Pilih Rute</option>
                                </select>
                            </div>  

                      </div>
                </div>
            </div>
        </div>

        <div class="container">
        <div class="row ">
            <div class="panel panel-default">
                  <div class="panel-body">
                        <div id="map"></div>
                  </div>
            </div>
                   
        </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="saveModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel"><b> <i class="fa fa-map-marker" aria-hidden=true></i> Buat Rute</h4></b>
              </div>
              <div class="modal-body">
                    <form class="inline">
                        <div class="form-group">
                            <label for="examplerute">Rute</label>
                            <input type="text" class="form-control" id="trute" placeholder="Malang">
                        </div>
                    </form>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" style="font-weight: bold;">Batal</button>
                <button type="button" class="btn btn-primary" style="font-weight: bold;" onclick="postMarkerToDB();" data-dismiss="modal"><i class="fa fa-check" aria-hidden=true></i> Simpan</button>
              </div>
            </div>
          </div>
        </div>

        <script type="text/javascript">
          $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        </script>

        

       <script>
         var map;
          var markers = [];

          var labels = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
          var labelIndex = 0;
          
          function initMap() {
            var malang = {lat:-7.967079,lng:112.632466}

            map = new google.maps.Map(document.getElementById('map'), {
              zoom: 15,
              center: malang,
              mapTypeId: 'terrain'
            });

            //Set lokasi anda saat ini / mencari tahu posisi anda saat ini  
            var infoWindow = new google.maps.InfoWindow({map: map});
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function(position) {
                  var pos = {
                    lat: position.coords.latitude,
                    lng: position.coords.longitude
                  };

                  infoWindow.setPosition(pos);
                  infoWindow.setContent('Hallo, Saya disini.');
                  map.setCenter(pos);
                }, function() {
                  handleLocationError(true, infoWindow, map.getCenter());
                });
              } else {
                // lakukan ini apabila browser anda tidak support geolocation
                handleLocationError(false, infoWindow, map.getCenter());
              }

            // listener sebagai tanda peta telah di-klik untuk menambah marker.
            map.addListener('click', function(event) {
              addMarker(event.latLng);
            });


            //fungsi yang diperuntukan untuk menghandle apabila terjadi error pada waktu proses geolocation
            function handleLocationError(browserHasGeolocation, infoWindow, pos) {
              infoWindow.setPosition(pos);
              infoWindow.setContent(browserHasGeolocation ?
                                    'Error: The Geolocation service failed.' :
                                    'Error: Your browser doesn\'t support geolocation.');
            }

                //filter rute yng akan ditampilkan pada peta.
            $('#filter').change('keyup',function() {
                $.getJSON('/mapping.marker/' + $(this).val(),function(location) {
                   $.each(location, function(i, item) {
                       var marker = new google.maps.Marker({
                          position: new google.maps.LatLng(item.lat, item.lng),
                          map: map
                        });
                            
                    });
                });
                 
            });
          }
   


          //Menambahkan marker dan label pada peta kemudian di push ke array.
          function addMarker(location) {
            var marker = new google.maps.Marker({
              position: location,
              label: labels[labelIndex++ % labels.length],
              map: map
            });
            markers.push(marker);
          }

          // Menampilkan semua marker yang tersimpan pada array ke dalam peta.
          function setMapOnAll(map) {
            for (var i = 0; i < markers.length; i++) {
              markers[i].setMap(map);
            }

          }

          //menghapus semua marker dari peta. 
          function clearMarkers() {
                setMapOnAll(null);
          }

         // Menghapus semua marker dari peta dan array.
         function deleteMarkers() {
            clearMarkers();
            markers = [];
         }

         //konfirmasi akan menyimpan ke database.
         function saveMarkers() {
            if (markers.length != 0) {
               $('#saveModal').modal();
            }  
          }

          //menyimpan semua marker dari array ke database
          function postMarkerToDB()
          {
            for (var i = 0; i < markers.length; i++) {
              $.post('/mapping.save',{'rute':$('#trute').val(),'lat' : markers[i].getPosition().lat(),'lng' : markers[i].getPosition().lng() },function(response) {
                        if (response.success) {
                            console.log('Rute berhasil dibuat');
                        } 
                    },'json'); 
            }

            location.reload();
          } 
        </script>

        <script type="text/javascript">
            $(document).ready(function() {
               
               $.getJSON('/mapping.data' ,function(data) {
                    $.each(data, function(i, item) {   
                        $('#filter').append($('<option>').text(item.rute).attr('value', item.rute));
                    });
               });    
            });    
        </script>
        <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD0xHhaxHv7ZBX3K_v7BBqxLn_I-v2GXGo&callback=initMap">
        </script>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    </body>
  
</html>
