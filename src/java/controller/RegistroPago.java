/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import Negocio.Conexion;
import Negocio.Detalle_Prestamo;
import Negocio.Prestamo;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
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
    @RequestMapping(value="RegistroPago.htm", method = RequestMethod.GET)
    public ModelAndView RegistrarPago(HttpServletRequest request)
    {
        LocalDate date = LocalDate.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");        
        id= Integer.parseInt(request.getParameter("id"));
        String sql = "SELECT * FROM abmpoo2.vs_registro_pago where id_prestamo ="+id;
        List datos = this.jdbcTemplate.queryForList(sql);
        
        
        mav.addObject(new Detalle_Prestamo());
        mav.addObject("fecha_pago",date.format(formatter));
        mav.addObject("lista",datos);
        mav.setViewName("RegistroPago");
        return mav;
       
    }
    
    @RequestMapping(value="RegistroPago.htm", method = RequestMethod.POST)
    public ModelAndView RegistrarPago
        (Detalle_Prestamo dp,HttpServletRequest request)
       //(@RequestParam("monto_cuota") String monto)          
   {
//        Detalle_Prestamo dp= new Detalle_Prestamo();
        LocalDate date = LocalDate.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String sql = "INSERT INTO abmpoo2.detalle_prestamo (monto_cuota,fecha_pago,idprestamo_cuota) "
                + "VALUES (?,?,?)";        
        this.jdbcTemplate.update(sql,0,
//                dp.getFecha_pago());
                  date.format(formatter),id);
//         String sql = "INSERT INTO abmpoo2.detalle_prestamo "
//                 + "(monto_cuota,fecha_pago,idprestamo_cuota) "
//                 + "VALUES(?,?,?)";
        // this.jdbcTemplate.update(sql,monto,date.format(formatter)/*dp.getFecha_pago()*/,dp.getIdprestamo_cuota());             
////       
//
         return new ModelAndView("redirect:/Inicio.htm");
////        mav.addObject("fecha_pago","2019-27-12");
////        mav.setViewName("RegistroPago");
// //      return mav;
////        
  }
    
    

   
}
