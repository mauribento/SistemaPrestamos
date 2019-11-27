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
    Date fecha_pago;    
    int idprestamo_cuota;

    public Detalle_Prestamo(float monto_cuota, int nro_cuota_pagar, Date fecha_pago, int idprestamo_cuota) {
        this.monto_cuota = monto_cuota;
        this.nro_cuota_pagar = nro_cuota_pagar;
        this.fecha_pago = fecha_pago;
        this.idprestamo_cuota = idprestamo_cuota;
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

    public Date getFecha_pago() {
        return fecha_pago;
    }

    public void setFecha_pago(Date fecha_pago) {
        this.fecha_pago = fecha_pago;
    }

   
    
}
