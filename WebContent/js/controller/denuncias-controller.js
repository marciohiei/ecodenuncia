angular.module("EcoDenuncia").controller("denunciasController",function ($scope){

	$scope.fullName = 'teste';
	var infowindow = new google.maps.InfoWindow();

	var myLatLng = {lat: -27.0982053, lng:  -48.9111422};

	  // Create a map object and specify the DOM element for display.
	  /*var map = new google.maps.Map(document.getElementById('map'), {
	    center: myLatLng,
	    scrollwheel: false,
	    zoom: 13
	  });*/
	  
	  
	  
	  /*
	  var long =  -48.9111422;
	for (var int = 0; int < 150; int++) {

	  // Create a marker and set its position.

	  var marker = new google.maps.Marker({
	    map: map,
	    position: {lat: -27.0982053, lng:  long},
	    title: 'Hello World!'+long
	  });
	  long = long + (-0.01)
	}*/
	
	
	    // Create a simple map.
	    map = new google.maps.Map(document.getElementById('map'), {
	    	scrollwheel: false,
		    zoom: 13,
	        center: myLatLng
	    });
	    google.maps.event.addListener(map, 'click', function() {
	      infowindow.close();
	    });

	    // Load the associated GeoJSON
	    var url = '/ecodenuncia/denuncias.do'//'http://www.geocodezip.com/fieldDataGeoJSON.txt';
	    map.data.loadGeoJson(url);

	  // Set event listener for each feature.
	  map.data.addListener('click', function(event) {
	     infowindow.setContent(event.feature.getProperty('name')+"<br>"+event.feature.getProperty('description')+"<a href=\"#\">...leia mais</a>");
	     infowindow.setPosition(event.latLng);
	     infowindow.setOptions({pixelOffset: new google.maps.Size(0,-34)});
	     infowindow.open(map);
	  });
	
	
	
	
});