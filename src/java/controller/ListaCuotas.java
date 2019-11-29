/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import Negocio.Conexion;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author bentom
 */
@Controller
public class ListaCuotas {
    Conexion con = new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();
    int id;
    @RequestMapping//("Cuotas.htm")
        (value="Cuotas.htm", method = RequestMethod.GET)
    public ModelAndView ListaCuotas
       (HttpServletRequest request)
    {
        id= Integer.parseInt(request.getParameter("id"));
        String sql = "SELECT idprestamo_cuota,prestamo_nro_cuota,prestamo_monto_cuota"
                + ",prestamo_fecha_pago,id_prestamo,prestamo_monto_interes"
                + ",prestamo_capital_pagado,prestamo_cuota_Amortizada,pagado_detalle FROM vs_prestamos_detalle_cuota where id_prestamo ="+id;
        //where id_prestamo =
        List datos = this.jdbcTemplate.queryForList(sql);        
        mav.addObject("lista",datos);
        mav.setViewName("Cuotas");        
        return mav; 
    }
}
