/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import Negocio.Conexion;
import Negocio.Prestamo;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
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
public class BorrarPrestamo {
    Conexion con = new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    int id;
    org.springframework.web.servlet.ModelAndView mav = new org.springframework.web.servlet.ModelAndView();
    @RequestMapping("BorrarPrestamo")
public ModelAndView BorrarPrestamo(HttpServletRequest request)
{
    id= Integer.parseInt(request.getParameter("id"));
    String sql = "DELETE FROM abmpoo2.detalle_prestamo where id_prestamo ="+id;
    this.jdbcTemplate.update(sql);
    return new ModelAndView("redirect:/Inicio.htm");
}


}
