/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import Negocio.Conexion;
import Negocio.Prestamo;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;
/**
 *
 * @author bentom
 */
@Controller
public class RegistrarPrestamo {
    Conexion con = new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();
    
    @RequestMapping(value="RegistrarPrestamo.htm", method = RequestMethod.GET)
    public ModelAndView RegistrarPrestamo()
    {
        mav.addObject(new Prestamo());
        mav.setViewName("registrar");        
        return mav;
    }
    
    @RequestMapping(value="RegistrarPrestamo.htm", method = RequestMethod.POST)
    public ModelAndView RegistrarPrestamo(Prestamo p)
    {
        String sql = "insert into abmpoo2.prestamo("
                + "importe_prestamo,cantidad_cuotas,porcentaje_int,fecha_actual,fecha_primer_vencimiento,id_tipo_prestamo)"
                + "VALUES(?,?,?,?,?,?)";
        this.jdbcTemplate.update(sql,p.getImporte_prestamo(),p.getCantidad_cuotas(),p.getPorcentaje_int(),p.getFecha_actual(),
                p.getFecha_primer_vencimiento(),p.getId_tipo_prestamo());
             
        return new ModelAndView("redirect:/Inicio.htm");
    }
    
}
