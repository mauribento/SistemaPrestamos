/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import Negocio.Conexion;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author bentom
 */
@Controller
public class ListaPrestamos {
    Conexion con = new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();
    
    @RequestMapping("Inicio.htm")
    public ModelAndView Listar()
    {
        String sql = "SELECT * FROM abmpoo2.vs_lista_prestamos";
        List datos = this.jdbcTemplate.queryForList(sql);
        
        mav.addObject("lista",datos);
        mav.setViewName("Inicio");
        
        return mav;
    }
    
}
