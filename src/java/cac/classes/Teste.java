/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cac.classes;

import cac.db.Chamado;
import cac.db.Usuario;
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
        
        List<Chamado> chamados = sesessao.createCriteria(Chamado.class).list();
        
        for(Chamado chmd : chamados){
            System.out.println(chmd.getIdchamado()+" - " + chmd.getEscola().getNome()+ " - "+ chmd.getEscola().getCidade().getNome() + " - "+ chmd.getDataabertura());
        }
        
        sesessao.close();
    }
}
