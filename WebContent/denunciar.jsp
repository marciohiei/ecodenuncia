<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<style>
<!--
#section1{background-image:url(img/fundo-madeira.png);background-repeat:repeat;}

-->
</style>
<div style="
    width: 100%;
    height: 100%;
    overflow: auto;">
<div class="container" >

      <div class="page-header" style="text-align: right;">
        <h1>DENUCIAR</h1>
        <p class="lead"> Envie aqui sua denuncia a nossos consultores.</p>
      </div>

            
      <div class="row">
        <div class="col-md-6">
			<div class="panel panel-default">
            <div class="panel-heading">
              <h3 class="panel-title">Dados </h3>
            </div>
            <div class="panel-body">
              <form class="navbar-form navbar-left" style="width: 100%" role="search">
				  <div class="row">
				  <div class="form-group" style="width: 100%">
				    <input ng-model="denuncia.nome" type="text" class="form-control" placeholder="Nome completo" style="width: 100%">
				  
				  </div>
				  </div>
				  <div class="row">
				  <div class="form-group" style="width: 100%">
				    <input ng-model="denuncia.cpf" type="text" class="form-control" placeholder="cpf" style="width: 100%">
				  </div>
				  </div>
				  <div class="row">
				  <div class="form-group" style="width: 100%">
				    <input ng-model="denuncia.email" type="text" class="form-control" placeholder="e-mail" style="width: 100%">
				  </div>
				  </div>
				  <div class="row">
				  <fieldset>
				        <legend>Endereço</legend>   
				 
				        <div class="form-group" style="width: 100%">    
				            <input ng-model="denuncia.endereco" style="width: 100%" type="text" id="txtEndereco" name="txtEndereco"  class="form-control" placeholder="Endereço"/>
				        </div>
				        <input ng-model="denuncia.txtLatitude" type="hidden" id="txtLatitude" name="txtLatitude" />
				        <input ng-model="denuncia.txtLongitude" type="hidden" id="txtLongitude" name="txtLongitude" />
				    </fieldset>
				  </div>
				  <div class="row">
				  <div class="form-group" style="width: 100%;">
				    <input ng-click="carregarNoMapa()" class="btn btn-default" type="button" id="btnEndereco" name="btnEndereco" value="Mostrar no mapa" style="width: 100%;"/>
				  </div>
				  </div>
				  <div class="row">
				  <div class="form-group" style="width: 100%;">
					<textarea  style="width: 100%; height: 230px;" class="form-control" placeholder="Denúncia" id="message" required data-validation-required-message="Please enter a message.">
					</textarea>
                  </div>
				  </div>
				  
				  <div class="row">
				  <div class="form-group">
				  <label>Foto:</label>
				    <input type="file" id="fotodenuncia" name="fotodenuncia" class="form-control"/>
				  </div>
				  </div>
				  
				  <div class="row">
				  <button ng-click="salvar()" type="button" class="btn btn-default" style="width: 100%;">ENVIAR</button>
				  </div>
 <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>  
				  
				  
				</form>
            </div>
          	</div>
		
		
		</div>
        <div class="col-md-6">
			<div class="panel panel-default">
            <div class="panel-heading">
              <h3 class="panel-title">mapa</h3>
            </div>
            <div class="panel-body">
              <div id="mapa" style="width: 100%; height: 500px;"></div>
              <h5>*digite para buscar o endereço ou arraste o ponteiro do mapa</h5>
              
            </div>
          	</div>
		
		
		</div>
      </div>
</div>
</div>
