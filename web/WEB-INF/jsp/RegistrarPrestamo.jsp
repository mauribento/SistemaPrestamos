<%-- 
    Document   : RegistrarPrestamo
    Created on : 26-nov-2019, 16:59:44
    Author     : bentom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Prestamo</title>
        <link rel="canonical" href="https://getbootstrap.com/docs/4.4/examples/dashboard/">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h3">Registrar Prestamo</h1>        
      </div>
        <form method="POST">
                    <div class="container mr-4">
                       <div class="form-group">
                       <label for="exampleInputEmail1">Monto Prestamo</label>
                       <input type="text" class="form-control" id="montoprestamo">   
                       </div>
                         <div class="form-group">
                       <label for="exampleInputEmail1">Numero de Cuotas</label>
                       <input type="text" class="form-control" id="nrocuota">   
                       </div>
                         <div class="form-group">
                       <label for="exampleInputEmail1">Interes</label>
                       <input type="text" class="form-control" id="interes">   
                       </div>                        
                         <div class="form-group">
                       <label for="exampleInputEmail1">Fecha Primer Vencimiento</label>
                       <input type="text" class="form-control" id="fechaprimervencimiento">   
                       </div>
                         <div class="form-group">
                       <label for="exampleInputEmail1">Tipo Prestamo</label>
                       
                       </div>
                    </div>
            <a href="Inicio.htm" class="btn btn-sm btn-outline-secondary">Registrar</a>
        </form>
    </body>
</html>
