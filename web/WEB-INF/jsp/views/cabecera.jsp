<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">       
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 
        <link href='<c:url value="public/css/estilos.css" />' rel="stylesheet" />
        <!-- //cdn.datatables.net/1.10.23/css/jquery.dataTables.min.css
        //cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js 
        herramientas para cargar datatables -->
    </head>
    <body>
        <div class="container mt-4">          
            <nav id="menu">
                <h1 style="text-align: center; background-color: blanchedalmond;">
                    Conectar JSP - JSTL - JDBC</h1>
                <ul>
                    <li style="float:right;"><a href="index.htm">Index</a></li>
                    <li><a href="formCliente.htm">Cliente</a></li>
                    <li><a href="#">Administrar Clientes</a>
                        <ul>
                            <li><a href="formConsultarCliente.htm">Consultar x Nombre</a></li>
                            <li><a href="formConsultarClienteXId.htm">Consultar x salario</a></li>
                            <li><a href="frmClientesXTelefono.htm">Consultar x Telefono</a></li>
                        </ul>
                    </li>
                    
                    <li><a class="active" href="#">About</a></li>
                </ul>
            </nav>            

