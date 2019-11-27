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
public class Prestamo_Cuota {
    int prestamo_nro_cuota;
    float prestamo_monto_cuota;
    Date prestamo_fecha_pago;
    int id_prestamo;
    float prestamo_monto_interes;
    float prestamo_capital_pagado;
    float prestamo_cuota_Amortizada;

    public Prestamo_Cuota(int prestamo_nro_cuota, float prestamo_monto_cuota, Date prestamo_fecha_pago, int id_prestamo, float prestamo_monto_interes, float prestamo_capital_pagado, float prestamo_cuota_Amortizada) {
        this.prestamo_nro_cuota = prestamo_nro_cuota;
        this.prestamo_monto_cuota = prestamo_monto_cuota;
        this.prestamo_fecha_pago = prestamo_fecha_pago;
        this.id_prestamo = id_prestamo;
        this.prestamo_monto_interes = prestamo_monto_interes;
        this.prestamo_capital_pagado = prestamo_capital_pagado;
        this.prestamo_cuota_Amortizada = prestamo_cuota_Amortizada;
    }

    public Prestamo_Cuota() {
    }

    public int getPrestamo_nro_cuota() {
        return prestamo_nro_cuota;
    }

    public void setPrestamo_nro_cuota(int prestamo_nro_cuota) {
        this.prestamo_nro_cuota = prestamo_nro_cuota;
    }

    public float getPrestamo_monto_cuota() {
        return prestamo_monto_cuota;
    }

    public void setPrestamo_monto_cuota(float prestamo_monto_cuota) {
        this.prestamo_monto_cuota = prestamo_monto_cuota;
    }

    public Date getPrestamo_fecha_pago() {
        return prestamo_fecha_pago;
    }

    public void setPrestamo_fecha_pago(Date prestamo_fecha_pago) {
        this.prestamo_fecha_pago = prestamo_fecha_pago;
    }

    public int getId_prestamo() {
        return id_prestamo;
    }

    public void setId_prestamo(int id_prestamo) {
        this.id_prestamo = id_prestamo;
    }

    public float getPrestamo_monto_interes() {
        return prestamo_monto_interes;
    }

    public void setPrestamo_monto_interes(float prestamo_monto_interes) {
        this.prestamo_monto_interes = prestamo_monto_interes;
    }

    public float getPrestamo_capital_pagado() {
        return prestamo_capital_pagado;
    }

    public void setPrestamo_capital_pagado(float prestamo_capital_pagado) {
        this.prestamo_capital_pagado = prestamo_capital_pagado;
    }

    public float getPrestamo_cuota_Amortizada() {
        return prestamo_cuota_Amortizada;
    }

    public void setPrestamo_cuota_Amortizada(float prestamo_cuota_Amortizada) {
        this.prestamo_cuota_Amortizada = prestamo_cuota_Amortizada;
    }
    
}
