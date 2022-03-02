package dao;

import java.net.ConnectException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.swing.JOptionPane;
import models.Cliente;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

/**
 * febrero 28 de 2022
 *
 * @author osben
 */
public class ClienteDao {

    JdbcTemplate jdbcTemplate;
    ConectarDB con = new ConectarDB();

    public List consultarCliente() {
        List datos = new ArrayList();
        try {
            this.jdbcTemplate = new JdbcTemplate(con.conectar());
            String sql = "select * from cliente";
            datos = this.jdbcTemplate.queryForList(sql);
        } catch (ConnectException exc) {
            JOptionPane.showMessageDialog(null, "Error al conectar SQL " + exc.getMessage(), "", JOptionPane.WARNING_MESSAGE);
        } catch (SQLException sqlexc) {
            JOptionPane.showMessageDialog(null, "Error en SQL " + sqlexc.getMessage(), "", JOptionPane.WARNING_MESSAGE);
        }
        return datos;
    }

    public List consultarClienteById(int id) {
        List cli = new ArrayList();
        try {
            this.jdbcTemplate = new JdbcTemplate(con.conectar());
            String sql = "select * from cliente where id = ? ";
            cli = this.jdbcTemplate.queryForList(sql, id);
        } catch (ConnectException exc) {
            JOptionPane.showMessageDialog(null, "Error al conectar SQL " + exc.getMessage(), "", JOptionPane.WARNING_MESSAGE);
        } catch (SQLException sqlexc) {
            JOptionPane.showMessageDialog(null, "Error en SQL " + sqlexc.getMessage(), "", JOptionPane.WARNING_MESSAGE);
        }

        return cli;
    }

    public List consultarClienteByNombre(String nombre) {
        List cli = new ArrayList();
        try {
            this.jdbcTemplate = new JdbcTemplate(con.conectar());
            String sql = "select * from cliente where nombre like '%" + nombre + "%' ";
            cli = this.jdbcTemplate.queryForList(sql);
        } catch (ConnectException exc) {
            JOptionPane.showMessageDialog(null, "Error al conectar SQL " + exc.getMessage(), "", JOptionPane.WARNING_MESSAGE);
        } catch (SQLException sqlexc) {
            JOptionPane.showMessageDialog(null, "Error en SQL " + sqlexc.getMessage(), "", JOptionPane.WARNING_MESSAGE);
        }
        return cli;
    }

    public List consultarClienteBySalario(double salario) {
        List cli = new ArrayList();
        try {
            this.jdbcTemplate = new JdbcTemplate(con.conectar());
            String sql = "select * from cliente where salario = ?";
            cli = this.jdbcTemplate.queryForList(sql, salario);
        } catch (ConnectException exc) {
            JOptionPane.showMessageDialog(null, "Error al conectar SQL " + exc.getMessage(), "", JOptionPane.WARNING_MESSAGE);
        } catch (SQLException sqlexc) {
            JOptionPane.showMessageDialog(null, "Error en SQL " + sqlexc.getMessage(), "", JOptionPane.WARNING_MESSAGE);
        }
        return cli;
    }

    public List telefonosCliente(String telefono) {
        List tele = new ArrayList();
        try {
            this.jdbcTemplate = new JdbcTemplate(con.conectar());
            String sql = "select * from cliente where telefono like '%" + telefono + "%'";
            tele = this.jdbcTemplate.queryForList(sql);
        } catch (ConnectException exc) {
            JOptionPane.showMessageDialog(null, "Error al conectar SQL " + exc.getMessage(), "", JOptionPane.WARNING_MESSAGE);
        } catch (SQLException sqlexc) {
            JOptionPane.showMessageDialog(null, "Error en SQL " + sqlexc.getMessage(), "", JOptionPane.WARNING_MESSAGE);
        }
        return tele;
    }

    //-------------------- para mostrar el listado de clientes --------------------
    public List consultarClientesVentas() {
        List datos = new ArrayList();
        try {
            this.jdbcTemplate = new JdbcTemplate(con.conectar());
            String sql = "select id, nombre from cliente";
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

    //========================== metodo para convertir la lista en cliente
//    public Cliente cargarClientes() {
//        final Cliente cli = new Cliente();
//        try {
//            this.jdbcTemplate = new JdbcTemplate(con.conectar());
//            String sql = "select * from cliente ";
//            return (Cliente) jdbcTemplate.query(sql, new ResultSetExtractor<Cliente>() {
//                @Override
//                public Cliente extractData(ResultSet rs) throws SQLException, DataAccessException {
//                    if (rs.next()) {
//                        cli.setId(rs.getInt("id"));
//                        cli.setNombre(rs.getString("nombre"));
//                    }
//                    return cli;
//                }
//            });
//        } catch (ConnectException exc) {
//            JOptionPane.showMessageDialog(null, "Error al conectar SQL " + exc.getMessage(), "", JOptionPane.WARNING_MESSAGE);
//        } catch (SQLException sqlexc) {
//            JOptionPane.showMessageDialog(null, "Error en SQL " + sqlexc.getMessage(), "", JOptionPane.WARNING_MESSAGE);
//        }
//        return cli;
//    }
}
