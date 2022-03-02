/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import java.net.ConnectException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author osben
 */
public class VentaDao {
    JdbcTemplate jdbcTemplate;
    ConectarDB con = new ConectarDB();
    
    public List consultarVentas(){
        List datos = new ArrayList();
        try{
         this.jdbcTemplate = new JdbcTemplate(con.conectar());           
        String sql = "select * from venta";        
        datos = this.jdbcTemplate.queryForList(sql);
        }catch(ConnectException exc){
            JOptionPane.showMessageDialog( null, "Error al conectar SQL " + exc.getMessage(), "", JOptionPane.WARNING_MESSAGE);
        }       
        catch(SQLException sqlexc){
            JOptionPane.showMessageDialog( null, "Error en SQL " + sqlexc.getMessage(), "", JOptionPane.WARNING_MESSAGE);
        }
        return datos;
    }

    public int consultarCodigo(){
        int cod = 0;
        try{
         this.jdbcTemplate = new JdbcTemplate(con.conectar());           
        String sql = "select max(cod_venta)+1 as codigo from venta;";  
        //el metodo queryForInt fue declarado obsoleto y ahora se usa esta clase.
        cod = this.jdbcTemplate.queryForObject(sql, Integer.class);
        }catch(ConnectException exc){
            JOptionPane.showMessageDialog( null, "Error al conectar SQL " + exc.getMessage(), "", JOptionPane.WARNING_MESSAGE);
        }       
        catch(SQLException sqlexc){
            JOptionPane.showMessageDialog( null, "Error en SQL " + sqlexc.getMessage(), "", JOptionPane.WARNING_MESSAGE);
        }
        return cod;
    }
 //-------------------- para mostrar el listado de productos --------------------
    public List consultarProductosVentas() {
        List datos = new ArrayList();
        try {
            this.jdbcTemplate = new JdbcTemplate(con.conectar());
            String sql = "select cod_producto, nombre from producto";
//            --- convertimos la conslta un un cliente
            datos = this.jdbcTemplate.queryForList(sql);
            return datos;
        } catch (ConnectException exc) {
            JOptionPane.showMessageDialog(null, "Error al conectar SQL " + exc.getMessage(), "", JOptionPane.WARNING_MESSAGE);
        } catch (SQLException sqlexc) {
            JOptionPane.showMessageDialog(null, "Error en SQL " + sqlexc.getMessage(), "", JOptionPane.WARNING_MESSAGE);
        }
        return datos;
    }
 
}
