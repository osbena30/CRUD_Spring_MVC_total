/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.ClienteDao;
import dao.ConectarDB;
import dao.VentaDao;
import java.net.ConnectException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
import models.Cliente;
import models.Venta;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author osben
 */
public class ventaController {

    private JdbcTemplate jdbcTemplate;

    public ventaController() {
        ConectarDB con = new ConectarDB();
        try {
            this.jdbcTemplate = new JdbcTemplate(con.conectar());
        } catch (ConnectException exc) {
            JOptionPane.showMessageDialog(null, "Error al conectar SQL " + exc.getMessage(), "", JOptionPane.WARNING_MESSAGE);
        } catch (SQLException sqlexc) {
            JOptionPane.showMessageDialog(null, "Error en SQL " + sqlexc.getMessage(), "", JOptionPane.WARNING_MESSAGE);
        }
    }

    @RequestMapping(value = "formVenta.htm", method = RequestMethod.GET)
    public ModelAndView formVenta() {
        ModelAndView mav = new ModelAndView();
        Venta venta = new Venta();
        VentaDao ventasDao = new VentaDao();
        List datos = ventasDao.consultarVentas();
        mav.addObject("venta", datos);
        mav.setViewName("views/formVenta");
        return mav;
    }
    @RequestMapping("formRegistrarVentas.htm")
    public ModelAndView formRegistrarVentas() {
        ModelAndView mav = new ModelAndView();
        List datos = new ArrayList(); // prueba
        List codProductos = new ArrayList(); // prueba
        Venta venta = new Venta();
        //--------- carga del id de la venta -----------
        VentaDao ventaDao = new VentaDao();
        int codigo = ventaDao.consultarCodigo();
        venta.setCod_Venta(codigo);
        //----------------------------------------------
        //---------- carga  de la lista de clientes ----
        ClienteDao cliDao = new ClienteDao();
        datos = cliDao.consultarClientesVentas();
//        Cliente cli =  cliDao.cargarClientes();
        mav.addObject("idClientes",datos);
//        mav.addObject("idClientes",cli);
        //---------- carga  de la lista de productos ----       
        codProductos = ventaDao.consultarProductosVentas();
        mav.addObject("idProductos",codProductos);
        //----------------------------------------------
        
        mav.addObject("venta", venta);
        mav.setViewName("views/formRegistrarVentas");
        return mav;
    }
   
}
