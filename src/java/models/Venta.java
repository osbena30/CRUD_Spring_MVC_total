/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package models;

/**
 *
 * @author osben
 */
public class Venta {
    private int Cod_Venta;
    private int id_cliente;
    private String fecha_venta;
    private int cod_producto;

    public Venta() {
    }

    public Venta(int Cod_Venta, int id_cliente, String fecha_venta, int cod_producto) {
        this.Cod_Venta = Cod_Venta;
        this.id_cliente = id_cliente;
        this.fecha_venta = fecha_venta;
        this.cod_producto = cod_producto;
    }

    public int getCod_Venta() {
        return Cod_Venta;
    }

    public void setCod_Venta(int Cod_Venta) {
        this.Cod_Venta = Cod_Venta;
    }

    public int getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    public String getFecha_venta() {
        return fecha_venta;
    }

    public void setFecha_venta(String fecha_venta) {
        this.fecha_venta = fecha_venta;
    }

    public int getCod_producto() {
        return cod_producto;
    }

    public void setCod_producto(int cod_producto) {
        this.cod_producto = cod_producto;
    }
    
}
