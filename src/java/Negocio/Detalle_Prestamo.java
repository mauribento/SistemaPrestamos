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
public class Detalle_Prestamo {
    
    float monto_cuota;  
    int nro_cuota_pagar;    
    String fecha_pago;    
    int idprestamo_cuota;
    float prestamo_monto_interes;
    String prestamo_fecha_pago;
    float importe_prestamo;
    int cantidad_cuotas;
    float porcentaje_int;

    public Detalle_Prestamo(float monto_cuota, int nro_cuota_pagar, String fecha_pago, int idprestamo_cuota, float prestamo_monto_interes, String prestamo_fecha_pago, float importe_prestamo, int cantidad_cuotas, float porcentaje_int) {
        this.monto_cuota = monto_cuota;
        this.nro_cuota_pagar = nro_cuota_pagar;
        this.fecha_pago = fecha_pago;
        this.idprestamo_cuota = idprestamo_cuota;
        this.prestamo_monto_interes = prestamo_monto_interes;
        this.prestamo_fecha_pago = prestamo_fecha_pago;
        this.importe_prestamo = importe_prestamo;
        this.cantidad_cuotas = cantidad_cuotas;
        this.porcentaje_int = porcentaje_int;
    }

    public float getPorcentaje_int() {
        return porcentaje_int;
    }

    public void setPorcentaje_int(float porcentaje_int) {
        this.porcentaje_int = porcentaje_int;
    }

    

    public int getCantidad_cuotas() {
        return cantidad_cuotas;
    }

    public void setCantidad_cuotas(int cantidad_cuotas) {
        this.cantidad_cuotas = cantidad_cuotas;
    }

    

    public float getImporte_prestamo() {
        return importe_prestamo;
    }

    public void setImporte_prestamo(int importe_prestamo) {
        this.importe_prestamo = importe_prestamo;
    }

   

    

    public String getPrestamo_fecha_pago() {
        return prestamo_fecha_pago;
    }

    public void setPrestamo_fecha_pago(String prestamo_fecha_pago) {
        this.prestamo_fecha_pago = prestamo_fecha_pago;
    }

   

    public float getPrestamo_monto_interes() {
        return prestamo_monto_interes;
    }

    public void setPrestamo_monto_interes(float prestamo_monto_interes) {
        this.prestamo_monto_interes = prestamo_monto_interes;
    }
    

    

    public float getMonto_cuota() {
        return monto_cuota;
    }

    public void setMonto_cuota(float monto_cuota) {
        this.monto_cuota = monto_cuota;
    }

    public int getNro_cuota_pagar() {
        return nro_cuota_pagar;
    }

    public void setNro_cuota_pagar(int nro_cuota_pagar) {
        this.nro_cuota_pagar = nro_cuota_pagar;
    }
    
   

    public int getIdprestamo_cuota() {
        return idprestamo_cuota;
    }

    public void setIdprestamo_cuota(int idprestamo_cuota) {
        this.idprestamo_cuota = idprestamo_cuota;
    }
    
    

    public Detalle_Prestamo() {
    }    

    public String getFecha_pago() {
        return fecha_pago;
    }

    public void setFecha_pago(String fecha_pago) {
        this.fecha_pago = fecha_pago;
    }

   
    
}
