<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="EcoDenuncia">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Eco Denuncia</title>


	
<!-- biblioteca jquery -->	
<script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
<script src="lib/jquery-ui/jquery-ui.min.js"></script>

<!-- Angular Lib -->
<script src="lib/angular/angular.min.js"></script>

<!--<script src="lib/angular-locale_pt-br.js"></script>
<script src="lib/angular-input-masks/angular-input-masks-standalone.min.js"></script>
<script src="lib/angular-resource/angular-resource.min.js"></script>
<script src="lib/angular-route/angular-route.min.js"></script>
<script src="lib/angular-bootstrap/ui-bootstrap-tpls.min.js"></script>
<script src="lib/angular-ui-date/src/date.js"></script>
<script src="lib/angular-utils-pagination/dirPagination.js"></script>
<script src="lib/angular-chart.js/dist/angular-chart.min.js"></script>
<script src="lib/angular-filter/dist/angular-filter.js"></script>-->

 
<!-- Maps API Javascript -->
<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyB8ocasxBn-XEFwmv878lRdlmsbLXYaGYM&amp;sensor=false"></script>
<script type="text/javascript" src="js/mapindex.js"></script>


<!-- fullpage -->
<script type="text/javascript" src="css/fullpage/jquery.fullPage.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#fullpage').fullpage({
			sectionsColor: ['#1bbc9b', '#ffffff', '#ffffff', '#ffffff', '#8AC525'],
			anchors: ['firstPage', 'secondPage', '3rdPage', '4thpage', 'lastPage'],
			menu: '#menu',
			afterLoad: function(anchorLink, index){

				//section 2
				if(index == 2){
					//moving the image
					/*$('#section1').find('img').delay(500).animate({
						left: '0%'
					}, 1500, 'easeOutExpo');

					$('#section1').find('p').first().fadeIn(1800, function(){
						$('#section1').find('p').last().fadeIn(1800);
					});;*/

				}

				//section 3
				if(anchorLink == '3rdPage'){
					//moving the image
					/*$('#section2').find('.intro').delay(500).animate({
						left: '0%'
					}, 1500, 'easeOutExpo');*/
				}
			}
		});
		//initMap();
		//initMapa("mapacadastro");
	});
	
	</script>

<!-- css -->
<link rel="stylesheet" type="text/css" href="css/fullpage/jquery.fullPage.css" />
<link rel="stylesheet" type="text/css" href="css/fullpage/examples.css" />
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/denunciar.css" />
    
</head>
<body>
<ul id="menu">
	<li data-menuanchor="firstPage"><a href="#firstPage">Home</a></li>
	<li data-menuanchor="secondPage"><a href="#secondPage">Denunciar</a></li>
	<li data-menuanchor="3rdPage"><a href="#3rdPage">Denuncias Realizadas</a></li>
	<li data-menuanchor="4thpage"><a href="#4thpage">Noticias</a></li>
	<li data-menuanchor="lastPage"><a href="#lastPage">Contatos</a></li>
</ul>

<div id="fullpage">
	
	<div class="section active" id="section0" ng-controller="IndexController">
		<div ng-repeat="sli in slides" class="slide active" 
		style="background-image: {{sli.image}}; background-size:100% 100%; background-repeat: no-repeat;">
		<img ng-src="{{sli.url}}" >
		</div>
	    
	</div>
	<div class="section" id="section1" ng-controller="DenunciarController"><c:import url="denunciar.jsp"></c:import></div>
	<div class="section" id="section2" ng-controller="denunciasController"><c:import url="denuncias.jsp"></c:import></div>
	<div class="section" id="section3" ng-controller="NoticiasController"><c:import url="noticias.jsp"></c:import></div>
	<div class="section" id="section4" ng-controller="ContatosController"><c:import url="contatos.jsp"></c:import></div>
	
</div>

<!-- Modal -->
<div class="modal fade" id="myModal" role="dialog" style="position:relative;">
   <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">CONFIRMAÇÃO</h4>
         </div>
         <div class="modal-body">
            <p>DENUNCIA CADASTRADA COM SUCESSO.</p>
         </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         </div>
      </div>
   </div>
</div>

<script src="js/app.js"></script>
<script src="js/controller/index-controller.js"></script>
<script src="js/controller/denunciar-controller.js"></script>
<script src="js/controller/denuncias-controller.js"></script>
<script src="js/controller/noticias-controller.js"></script>
<script src="js/controller/contatos-controller.js"></script>

<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>