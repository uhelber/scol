/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cac.classes;

import cac.db.Fabrica;
import cac.mapeamento.Chamado;
import cac.mapeamento.Usuario;
import java.sql.SQLException;
import java.util.List;
import org.hibernate.Session;


/**
 *
 * @author UhelberC
 */
public class Teste {

    public static void main(String args[]) throws ClassNotFoundException, SQLException{
        Fabrica fabrica = new Fabrica();
        Session sesessao = fabrica.getSessao();
        
        List<Usuario> usuarios = sesessao.createCriteria(Usuario.class).list();
        
        for(Usuario usr : usuarios){
            System.out.println(usr.getIdusuarios() + " - " + usr.getNome() + " " + usr.getSobrenome()+ " - " + usr.getLogin().getUsuario());
        }
        
        sesessao.close();
    }
}
