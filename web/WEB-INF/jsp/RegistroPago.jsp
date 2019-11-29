<%-- 
    Document   : RegistroPago
    Created on : 26-nov-2019, 18:12:58
    Author     : bentom
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Registrar Pago</title>
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
        format: 'yyyy/mm/dd',
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
        <h1 class="h3">Registrar Pago</h1>        
      </div>
         <form:form method="POST" commandName="lista">
        <div class="container mr-4">           
            <div class="row">
                <div class="col-sm-12">
                <div class="panel panel-default ">
                  <div class="panel-heading">Detalle del prestamo</div>
                  <div class="panel-body">                    
                      <div class="row">
                         
                  <div class="col-sm-3">
                    <div class="form-group">
                       <label>Monto Prestamo</label>                      
                       
                       <form:input path="importe_prestamo" cssClass="form-control" disabled="true"></form:input>
                    </div></div>
                       <div class="col-sm-3">
                         <div class="form-group">
                       <label>Numero de Cuotas</label>                     
                        
                        <form:input path="cantidad_cuotas" cssClass="form-control" disabled="true"></form:input>
                       </div>
                       </div>
                       <div class="col-sm-3">
                         <div class="form-group">
                       <label>Interes</label>                     
                         
                         <form:input path="porcentaje_int" cssClass="form-control" disabled="true"></form:input>
                       </div>   
                       </div>
                        <div class="col-sm-3">
                         <div class="form-group">
                       <label>Fecha de Pago prevista</label>                     
                         
                         <form:input path="prestamo_fecha_pago" cssClass="form-control" disabled="true"></form:input>
                       </div>   
                       </div>                     
                  </div>                        
                </div>
                </div>
                       <div class="col-md-12">
                           <div class="panel panel-default">
                              <div class="panel-heading">Pago A realizar</div>
                              <div class="panel-body">
                                          
                              <div clas="row">
                              
                                 <div class="col-sm-4">
                                   <div class="form-group">
                                   <label>Numero de Cuota a pagar</label>                                   
                                   <form:input path="nro_cuota_pagar" cssClass="form-control"></form:input>                                  
                                   </div>
                                 </div>
                                   
                                  <div class="col-sm-4">
                                   <div class="form-group">
                                   <label>Monto a pagar</label>                                    
                                   <form:input path="monto_cuota" cssClass="form-control"></form:input>
                                   </div>
                                 </div>
                                   <div class="col-sm-4">
                                   <div class="form-group">
                                   <label>Fecha de pago</label>                                  
                                   <form:input path="fecha_pago" cssClass="form-control" id="date"></form:input>                                    
                                   </div>
                                 </div>
                                          
                                  <div class="col-sm-4">
                                      <a href="Inicio.htm" class="btn btn-sm btn-outline-secondary">Cancelar</a>
                                      <input type="submit" class="btn btn-sm btn-outline-secondary" value="Registrar">
                                  
                                  </div>
                                 
                              </div>      
                           
                          </div>
                        </div>
                       
        </div>
                </div>
            </div>
          </div>
                </form:form>     
                </body>
</html>
