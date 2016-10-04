<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="layout_up.html"></c:import>

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Noticias
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.jsp">EcoDenuncias</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-table"></i> noticias
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    
                    <div class="col-lg-12">
                        <h2>noticias</h2>
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover table-striped">
                                <thead>
                                    <tr>
                                        <th>Codigo</th>
                                        <th>Nome denunciante</th>
                                        <th>Localização</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>12334</td>
                                        <td>marcio</td>
                                        <td><button type="button" class="btn btn-default">Mapa</button></td>
                                        <td>
						                    <button type="button" class="btn btn-warning">Editar</button></td>
						                   
                                    </tr>
                                    <tr>
                                        <td>12334</td>
                                        <td>marcio</td>
                                        <td><button type="button" class="btn btn-default">Mapa</button></td>
                                        <td>
						                    <button type="button" class="btn btn-warning">Editar</button></td>
						                   
                                    </tr>
                                    <tr>
                                        <td>12334</td>
                                        <td>marcio</td>
                                        <td><button type="button" class="btn btn-default">Mapa</button></td>
                                        <td>
						                    <button type="button" class="btn btn-warning">Editar</button></td>
						                   
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->
<c:import url="layout_bottom.html"></c:import>
       
