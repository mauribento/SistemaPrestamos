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
        <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

        <link rel="canonical" href="https://getbootstrap.com/docs/4.4/examples/dashboard/">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
       <link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />

        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        
       <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
        
       <script>
    $(document).ready(function(){
      var date_input=$('input[name="date"]'); //our date input has the name "date"
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'mm/dd/yyyy',
        container: container,
        todayHighlight: true,
        autoclose: true,
      };
      date_input.datepicker(options);
    })
</script>

    </head>
    <body>
        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h3">Registrar Prestamo</h1>        
      </div>
        <form method="POST" required="required">
                    <div class="container mr-4">
                        <div class="row">
                            <div class="col-md-6">
                            
                       <div class="form-group">
                       <label >Monto Prestamo</label>
                       <input type="text" class="form-control" id="montoprestamo" required="required">   
                       </div>
                         <div class="form-group">
                       <label >Numero de Cuotas</label>
                       <input type="text" class="form-control" id="nrocuota" required="required">   
                       </div>
                         <div class="form-group">
                       <label >Interes</label>
                       <input type="text" class="form-control" id="interes" required="required">   
                       </div>                        
                         <div class="form-group">
                       <label >Fecha Primer Vencimiento</label>
                       <input class="form-control" id="date" name="date" placeholder="MM/DD/YYY" type="text" required="required"/>
 
                         </div>
                         <div class="form-group">
                       <label >Tipo Prestamo</label>
                       <select name="city" id="city" class="form-control">
            <option value="sydney">Sydney</option>
            <option value="melbourne">Melbourne</option>
            <option value="cromwell">Cromwell</option>
        </select>
                       </div>
                                
                            <a href="Inicio.htm" class="btn btn-sm btn-outline-secondary">Cancelar</a>
                            <input type="submit" class="btn btn-sm btn-outline-secondary" value="Registrar">
                                </div>
                        </div>
                    </div>
            
        </form>
    </body>
</html>
