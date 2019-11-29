/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import Negocio.Conexion;
import Negocio.Detalle_Prestamo;
import Negocio.Prestamo;
import Negocio.Prestamo_Cuota;
import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
/**
 *
 * @author bentom
 */
@Controller
public class RegistroPago {
    Conexion con = new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();
    int id;
    int id2;
    Detalle_Prestamo dp= new Detalle_Prestamo();
    @RequestMapping(value="RegistroPago.htm", method = RequestMethod.GET)    
    public ModelAndView RegistroPago(HttpServletRequest request)
    {
//        LocalDate date = LocalDate.now();
//        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");        
        id= Integer.parseInt(request.getParameter("id"));
        Detalle_Prestamo datos = this.SELECTDetalle_Prestamo(id);        
        
        mav.setViewName("RegistroPago");
//        mav.addObject("lista",new Detalle_Prestamo());
        mav.addObject("lista",new Detalle_Prestamo(
                datos.getMonto_cuota()
                ,datos.getNro_cuota_pagar()
                ,datos.getFecha_pago() 
                ,datos.getIdprestamo_cuota()
                ,datos.getPrestamo_monto_interes()                
                ,datos.getPrestamo_fecha_pago()
                ,datos.getImporte_prestamo()
                ,datos.getCantidad_cuotas()
                ,datos.getPorcentaje_int()
               ));
        
//      float monto_cuota, int nro_cuota_pagar, Date fecha_pago, int idprestamo_cuota, float prestamo_monto_interes, Date prestamo_fecha_pago, 
//float importe_prestamo, int cantidad_cuotas, int porcentaje_int
        

        return mav;
        
//        return new ModelAndView("RegistroPago","lista",new Detalle_Prestamo());
       
    }
    
    @RequestMapping(value="RegistroPago.htm", method = RequestMethod.POST)
    public ModelAndView RegistroPago(Detalle_Prestamo dp,HttpServletRequest request)       
   {
        
////        LocalDate date = LocalDate.now();
       id2= Integer.parseInt(request.getParameter("id2"));
////        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        
////         String sql = "INSERT INTO abmpoo2.detalle_prestamo "
////                 + "(monto_cuota,fecha_pago,idprestamo_cuota) "
////                 + "VALUES(?,?,?)";
//        // this.jdbcTemplate.update(sql,monto,date.format(formatter)/*dp.getFecha_pago()*/,dp.getIdprestamo_cuota());             
//////       
////
         
//////        mav.addObject("fecha_pago","2019-27-12");
       
       String sql = "INSERT INTO abmpoo2.detalle_prestamo (monto_cuota,fecha_pago,idprestamo_cuota) "
                + "VALUES ("+dp.getMonto_cuota()+",CAST('"+ dp.getFecha_pago() +"' AS DATE),"+id2+")";        
        this.jdbcTemplate.update(sql);
                //dp.getMonto_cuota(),dp.getFecha_pago(),dp.getIdprestamo_cuota());
        return new ModelAndView("redirect:/Inicio.htm");
//        mav.setViewName("Inicio");
//       return mav;
//////        
 }
  
    public Detalle_Prestamo SELECTDetalle_Prestamo(int id)
    {
        final Detalle_Prestamo dp = new Detalle_Prestamo();
        String sql = "SELECT * FROM abmpoo2.vs_registro_pago where id_prestamo ='"+id+"'";

        LocalDate localDate = LocalDate.now();
        
        return (Detalle_Prestamo) jdbcTemplate.query(sql, new ResultSetExtractor<Detalle_Prestamo>(){
                //jdbcTemplate.query(sql, (ResultSet rs) throws SQLException,DataAccessExcept
                //-> {
            public Detalle_Prestamo extractData(ResultSet rs) throws SQLException, DataAccessException{
            if(rs.next()){
                dp.setMonto_cuota(Float.parseFloat(rs.getString("monto_cuota")));
                dp.setImporte_prestamo(Integer.parseInt(rs.getString("importe_prestamo")));
                dp.setIdprestamo_cuota(Integer.parseInt(rs.getString("idprestamo_cuota")));
                dp.setPrestamo_monto_interes(Float.parseFloat(rs.getString("prestamo_monto_interes")));
                dp.setNro_cuota_pagar(Integer.parseInt(rs.getString("nro_cuota_pagar")));
                dp.setCantidad_cuotas(Integer.parseInt(rs.getString("cantidad_cuotas")));
                dp.setPorcentaje_int(Float.parseFloat(rs.getString("porcentaje_int")));               
                dp.setPrestamo_fecha_pago(rs.getString("prestamo_fecha_pago"));
                dp.setFecha_pago(DateTimeFormatter.ofPattern("yyy/MM/dd").format(localDate));

            }
            return dp;
            }
        });         
        
        
        
    }
    

   
}
