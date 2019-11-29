<%-- 
    Document   : Cuotas
    Created on : 27-nov-2019, 15:45:50
    Author     : bentom
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cuotas</title>
        <link rel="canonical" href="https://getbootstrap.com/docs/4.4/examples/dashboard/">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </head>
    <body>
          <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h3">Cuotas</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
          <div class="btn-group mr-2">
              <a class="btn btn-sm btn-outline-secondary" href="Inicio.htm">Cancelar</a>           
          </div>         
        </div>
      </div>
        <div class="container mr-4">
            <div class="table-responsive">                
                    <table class="table table-striped table-sm">
                        <thead>
                            <tr>                                
                                <th>Nro. Cuota</th>
                                <th>Importe</th>
                                <th>Interes</th>
                                <th>Fecha de Pago Prevista</th>
                               
                                <th>Capital</th>                                
                                <th>Cuota Amortizada</th>
                                <th>Pagado</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato" items="${lista}">
                            <tr>                                
                                <td>${dato.prestamo_nro_cuota}</td>
                                <td>${dato.prestamo_monto_cuota}</td>
                                <td>${dato.prestamo_monto_interes}</td>
                                <td>${dato.prestamo_fecha_pago}</td>
                                
                                <td>${dato.prestamo_capital_pagado}</td>                                
                                <td>${dato.prestamo_cuota_Amortizada}</td>
                                <td>${dato.pagado_detalle}</td>
                                
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    
            </div>
        </div>
    </body>
</html>
