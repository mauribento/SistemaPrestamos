<%-- 
    Document   : RegistroPago
    Created on : 26-nov-2019, 18:12:58
    Author     : bentom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Registrar Pago</title>
        <link rel="canonical" href="https://getbootstrap.com/docs/4.4/examples/dashboard/">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </head>
    <body>
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h3">Registrar Pago</h1>        
      </div>
        <div class="container mr-4">
            <div class="row">
                <div class="col-sm-4">
                    <div class="form-group">
                       <label for="exampleInputEmail1">Monto Prestamo</label>
                       <input type="text" class="form-control" value="${lista[0].importe_prestamo}" disabled="true">   
                    </div></div>
                       <div class="col-sm-4">
                         <div class="form-group">
                       <label for="exampleInputEmail1">Numero de Cuotas</label>
                       <input type="text" class="form-control" value="${lista[0].cantidad_cuotas}"disabled="true">   
                       </div>
                       </div>
                       <div class="col-sm-4">
                         <div class="form-group">
                       <label for="exampleInputEmail1">Interes</label>
                       <input type="text" class="form-control"  value="${lista[0].porcentaje_int}"disabled="true">   
                       </div>   
                       </div>
                       <div class="col-sm-4">
                         <div class="form-group">
                       <label for="exampleInputEmail1">Fecha Primer Vencimiento</label>
                       <input type="text" class="form-control"  value="${lista[0].fecha_primer_vencimiento}"disabled="true">   
                       </div>
                       </div>
                       <div class="col-sm-4">
                         <div class="form-group">
                       <label for="exampleInputEmail1">Tipo Prestamo</label>                       
                       </div>
                </div>                
            
        </div>
    </body>
</html>
