/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Negocio;

import java.util.Date;

/**
 *
 * @author bentom
 */
public class Prestamo {       
        int importe_prestamo;
        int cantidad_cuotas;
        float porcentaje_int;
        Date fecha_actual;
        Date fecha_primer_vencimiento;
        int id_tipo_prestamo;

    public Prestamo() {
    }       

    public Prestamo(int importe_prestamo, int cantidad_cuotas, float porcentaje_int, Date fecha_actual, Date fecha_primer_vencimiento, int id_tipo_prestamo) {
        this.importe_prestamo = importe_prestamo;
        this.cantidad_cuotas = cantidad_cuotas;
        this.porcentaje_int = porcentaje_int;
        this.fecha_actual = fecha_actual;
        this.fecha_primer_vencimiento = fecha_primer_vencimiento;
        this.id_tipo_prestamo = id_tipo_prestamo;
    }   

    public int getImporte_prestamo() {
        return importe_prestamo;
    }

    public void setImporte_prestamo(int importe_prestamo) {
        this.importe_prestamo = importe_prestamo;
    }

    public int getCantidad_cuotas() {
        return cantidad_cuotas;
    }

    public void setCantidad_cuotas(int cantidad_cuotas) {
        this.cantidad_cuotas = cantidad_cuotas;
    }

    public float getPorcentaje_int() {
        return porcentaje_int;
    }

    public void setPorcentaje_int(float porcentaje_int) {
        this.porcentaje_int = porcentaje_int;
    }

    public Date getFecha_actual() {
        return fecha_actual;
    }

    public void setFecha_actual(Date fecha_actual) {
        this.fecha_actual = fecha_actual;
    }

    public Date getFecha_primer_vencimiento() {
        return fecha_primer_vencimiento;
    }

    public void setFecha_primer_vencimiento(Date fecha_primer_vencimiento) {
        this.fecha_primer_vencimiento = fecha_primer_vencimiento;
    }

    public int getId_tipo_prestamo() {
        return id_tipo_prestamo;
    }

    public void setId_tipo_prestamo(int id_tipo_prestamo) {
        this.id_tipo_prestamo = id_tipo_prestamo;
    }
    
}
