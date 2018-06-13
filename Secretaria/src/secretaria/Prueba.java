/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Secretaria;

/**
 *
 * @author Juank
 */
public class Prueba {

    public static void main(String[] args) {

        Conexion database = new Conexion("localhost:3306", "root", "root", "test");

        if (database.conectar()) {
            System.out.println("Conexion exitosa!!!");
            database.desconectar();
        }else{
            System.out.println("Ocurrio un error:" + database.getMensajeError());
        }

    }

}