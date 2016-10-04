function initMap() {
  var myLatLng = {lat: -27.0982053, lng:  -48.9111422};

  // Create a map object and specify the DOM element for display.
  var map = new google.maps.Map(document.getElementById('map'), {
    center: myLatLng,
    scrollwheel: false,
    zoom: 13
  });
  var long =  -48.9111422;
for (var int = 0; int < 150; int++) {

  // Create a marker and set its position.

  var marker = new google.maps.Marker({
    map: map,
    position: {lat: -27.0982053, lng:  long},
    title: 'Hello World!'+long
  });
  long = long + (-0.01)
}
}

function initMapa(idmapa) {
	/*  var myLatLng = {lat: -27.0982053, lng:  -48.9111422};

	  // Create a map object and specify the DOM element for display.
	  var map = new google.maps.Map(document.getElementById(idmapa), {
	    center: myLatLng,
	    scrollwheel: false,
	    zoom: 15
	  });
	  */
	}

//var map;
//var infowindow = new google.maps.InfoWindow();
/*
function initialize() {
    // Create a simple map.
    map = new google.maps.Map(document.getElementById('mapacadastro'), {
        zoom: 14,
        center: new google.maps.LatLng(-27.779627,153.236112)
    });
    google.maps.event.addListener(map, 'click', function() {
      infowindow.close();
    });

    // Load the associated GeoJSON
    var url = '/ecodenuncia/denuncias.do'//'http://www.geocodezip.com/fieldDataGeoJSON.txt';
    map.data.loadGeoJson(url);

  // Set event listener for each feature.
  map.data.addListener('click', function(event) {
     infowindow.setContent(event.feature.getProperty('name')+"<br>"+event.feature.getProperty('description'));
     infowindow.setPosition(event.latLng);
     infowindow.setOptions({pixelOffset: new google.maps.Size(0,-34)});
     infowindow.open(map);
  });
}
google.maps.event.addDomListener(window, 'load', initialize);
*/
var geocoder;
var map;
var marker;
 
function initialize() {

	var latlng = new google.maps.LatLng(-27.0982053, -48.9111422);
    var options = {
        zoom: 14,
        center: latlng,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };
 
    map = new google.maps.Map(document.getElementById("mapa"), options);
 
    geocoder = new google.maps.Geocoder();
 
    marker = new google.maps.Marker({
        map: map,
        draggable: true,
    });
 
    marker.setPosition(latlng);
}
 
$(document).ready(function () {
    //initialize();
    
   /* function carregarNoMapa(endereco) {
        geocoder.geocode({ 'address': endereco + ', Brasil', 'region': 'BR' }, function (results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                if (results[0]) {
                    var latitude = results[0].geometry.location.lat();
                    var longitude = results[0].geometry.location.lng();
 
                    $('#txtEndereco').val(results[0].formatted_address);
                    $('#txtLatitude').val(latitude);
                    $('#txtLongitude').val(longitude);
 
                    var location = new google.maps.LatLng(latitude, longitude);
                    marker.setPosition(location);
                    map.setCenter(location);
                    map.setZoom(16);
                }
            }
        });
    }

    $("#btnEndereco").click(function() {
        if($(this).val() != "")
            carregarNoMapa($("#txtEndereco").val());
    })
 
    $("#txtEndereco").blur(function() {
        if($(this).val() != "")
            carregarNoMapa($(this).val());
    })
    google.maps.event.addListener(marker, 'drag', function () {
        geocoder.geocode({ 'latLng': marker.getPosition() }, function (results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                    if (results[0]) { 
                    $('#txtEndereco').val(results[0].formatted_address);
                    $('#txtLatitude').val(marker.getPosition().lat());
                    $('#txtLongitude').val(marker.getPosition().lng());
                }
            }
        });
    });*/
    
    
    
    
});