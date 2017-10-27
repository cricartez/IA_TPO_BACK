<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agencias - Alta</title>
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
      	<li><a class="menu-link" href="/OfertaPaquetesWebSite/agencias">Volver</a></li>  
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<body>
   <br>
   <br>
  <div class="container">
  <h2>Agregar agencias</h2>
  <p>Formulario para la carga de agencias al sistema.</p>                                                                                      
  <form id="frmAgencias" method="post">
  <h5></h5>
  <div class="form-group">
    <label for="Nombre">Nombre:</label>
    <input type="text" class="form-control" id="nombre" name="nombre">
  </div>
  <div class="form-group">
    <label for="Direccion"">Direccion:</label>
    <input class="form-control" id="direccion" name="direccion" type="text">
  </div>
  <div class="form-group">
    <label>Estado:</label>
    <input class="form-control" id="Estado" name="estado" type="text">
  </div>
  
  <div class="row">
  	<div class="col-xs-6 col-sm-6 col-md-6 col-lg-4 col-lg-offset-3">
	  <a class="btn btn-primary" id="btnSubmit"><span class="glyphicon glyphicon-ok"></span> Guardar</a>
  	</div>
  	<div class="col-xs-6 col-sm-6 col-md-6 col-lg-2">
	  <a class="btn btn-danger" href="/OfertaPaquetesWebSite/agencias"><span class="glyphicon glyphicon-remove"></span> Cancelar</a>
  	</div>
  </div>
</form>
</div>
</body>

<script>
	$("#btnSubmit").click(function(){
		$("#frmAgencias").submit();
		})
</script>
</html>