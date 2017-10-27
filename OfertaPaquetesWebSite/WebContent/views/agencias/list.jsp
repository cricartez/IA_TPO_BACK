<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="models.agencia"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agencias - Listado</title>
<script type="text/javascript" src="js/jquery/jquery-1.12.1.js"></script>
<script type="text/javascript" src="js/Bootstrap/bootstrap.js"></script>
<link type="text/css" href="css/Bootstrap/bootstrap.css" rel="stylesheet" />

<style>
  #menu{
    background: black!important;
  }
  .menu-link{
    color:white!important;
  }
  
</style>
  
</head>

<nav id="menu" class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="menu-link navbar-brand" href="/OfertaPaquetesWebSite/Index.jsp"><span class="glyphicon glyphicon-home"></span></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a class="menu-link" href="/OfertaPaquetesWebSite/Index.jsp">Volver</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<body>

    <a class="btn btn-success btn-block" href="/OfertaPaquetesWebSite/agencias?accion=crear"><span class="glyphicon glyphicon-plus"></span> Agregar agencia</a>
 
 
 

 
  <div class="container">
  <h2>Agencias</h2>
  <p>Listado de las agencias cargadas en el sistema.</p>                                                                                      
  <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
        <th>#</th>
        <th>Nombre</th>
        <th>Direcci�n</th>
        <th>Estado</th>
      </tr>
    </thead>
    <tbody>
      <% List<agencia> lst = (List<agencia>) request.getAttribute("listAgencias");
    		for(agencia a : lst)
    		{
		%>
      <tr>
        <td>1</td>
        <td><%=a.nombre%></td>
        <td><%=a.direccion%></td>
        <td><%=a.estado%></td>
      </tr>
	<%}%>
    </tbody>
  </table>
  </div>
</div>
</body>
</html>