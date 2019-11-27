<%-- 
    Document   : Inicio
    Created on : 26-nov-2019, 13:21:27
    Author     : bentom
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prestamos</title>
        <link rel="canonical" href="https://getbootstrap.com/docs/4.4/examples/dashboard/">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h3">Prestamos</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
          <div class="btn-group mr-2">
              <a class="btn btn-sm btn-outline-secondary" href="RegistrarPrestamo.htm">Registrar</a>           
          </div>         
        </div>
      </div>
        <div class="container mr-4">
            <div class="table-responsive">                
                    <table class="table table-striped table-sm">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nro. Cuota</th>
                                <th>Importe</th>
                                <th>Interes</th>
                                <th>Fecha de Alta</th>
                                <th>Vencimiento</th>
                                
                                <th>Tipo Prestamo</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato" items="${lista}">
                            <tr>
                                <td>${dato.id_prestamo}</td>
                                <td>${dato.cantidad_cuotas}</td>
                                <td>${dato.importe_prestamo}</td>
                                <td>${dato.porcentaje_int}</td>
                                <td>${dato.fecha_actual}</td>
                                <td>${dato.fecha_primer_vencimiento}</td>
                                
                                <td>${dato.desc_tipo_prestamo}</td>
                                <td>
                                    <a class="btn btn-sm btn-outline-secondary" href="RegistroPago.htm?id=${dato.id_prestamo}" >Pagar</a>
                                    <a class="btn btn-sm btn-outline-secondary" href="Cuotas.htm?id=${dato.id_prestamo}" >Cuotas</a>
                                    <a class="btn btn-sm btn-outline-secondary" href="BorrarPrestamo.htm?id=${dato.id_prestamo}">Eliminar</a>
                                </td>
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    
            </div>
        </div>
    </body>
</html>
