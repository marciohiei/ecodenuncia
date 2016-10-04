angular.module("EcoDenuncia").controller("DenunciarController",function ($scope, $http,$window){
	
	var denuncia = {};
	$scope.denuncia = denuncia;
	
	$scope.denuncia = {
			nome:'',
			cpf:'',
			email:'',
			endereco:'',
			txtLatitude:'',
			txtLongitude:'',
			ponto:'',
			menssagem:''
			
	};
	
	$scope.geocoder;
	$scope.map;
	$scope.marker;
	
	var latlng = new google.maps.LatLng(-27.0982053, -48.9111422);
    var options = {
        zoom: 14,
        center: latlng,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };
 
    $scope.map = new google.maps.Map(document.getElementById("mapa"), options);
 
    $scope.geocoder = new google.maps.Geocoder();
 
    $scope.marker = new google.maps.Marker({
        map: $scope.map,
        draggable: true,
    });
 
    $scope.marker.setPosition(latlng);
    
    
    
    
    $scope.carregarNoMapa = function() {
    	var endereco = $scope.denuncia.endereco;
    	$scope.geocoder.geocode({ 'address': endereco + ', Brasil', 'region': 'BR' }, function (results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                if (results[0]) {
                    var latitude = results[0].geometry.location.lat();
                    var longitude = results[0].geometry.location.lng();
 
                    $scope.denuncia.endereco = results[0].formatted_address;
                    $scope.denuncia.txtLatitude = latitude;
                    $scope.denuncia.txtLongitude = longitude;
                    $scope.denuncia.ponto = 'POINT('+longitude+' '+latitude+')';
 
                    var location = new google.maps.LatLng(latitude, longitude);
                    $scope.marker.setPosition(location);
                    $scope.map.setCenter(location);
                    $scope.map.setZoom(16);
                    
                    $scope.$apply();
                    
                    
                    $http({
                    	  method: 'GET',
                    	  url: 'denuncias.do'
                    	}).then(function successCallback(response) {
                    	    // this callback will be called asynchronously
                    	    // when the response is available
                    		$scope.retorno = response;
                    	  }, function errorCallback(response) {
                    	    // called asynchronously if an error occurs
                    	    // or server returns response with an error status.
                    		  $scope.retorno = response;
                    	  });
                    
                }
            }
        });
    }
    $scope.listiner = google.maps.event.addListener($scope.marker, 'drag', function () {
    	$scope.geocoder.geocode({ 'latLng': $scope.marker.getPosition() }, function (results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                    if (results[0]) { 
                    $scope.denuncia.endereco =results[0].formatted_address;                    
                    $scope.denuncia.txtLatitude = $scope.marker.getPosition().lat();
                    $scope.denuncia.txtLongitude = $scope.marker.getPosition().lng();
                    $scope.denuncia.ponto = 'POINT('+$scope.marker.getPosition().lng()+' '+$scope.marker.getPosition().lat()+')';
                    $scope.$apply();
                }
            }
        });
    });
    $scope.salvar = function() {
    	var myobject = $scope.denuncia;                  
        
    	$("#myModal").modal();            
    	$scope.toparams = function ObjecttoParams(obj) {
                        var p = [];
                        for (var key in obj) {
                            p.push(key + '=' + encodeURIComponent(obj[key]));
                        }
                        return p.join('&');
                    };
                    $http({
                	    method: 'POST',
                	    url: 'denuncias.do',
                	    data: $scope.toparams(myobject),
                	    headers: {'Content-Type': 'application/x-www-form-urlencoded'}
                	}).then(function(response) {
                        // success
                    }, 
                    function(response) { // optional
                            // failed
                    });
   
    }
    
    
    
    
});