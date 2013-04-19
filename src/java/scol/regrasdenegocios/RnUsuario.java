/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package scol.regrasdenegocios;

import org.hibernate.Session;
import scol.db.RecuperarAtributo;
import scol.mapeamento.Login;
import scol.mapeamento.Usuario;
import scol.regrasdenegocios.excessoes.RnExcessoes;
import scol.repositorio.DAO.UsuariosDAO;
import scol.repositorio.Usuarios;

/**
 *
 * @author UhelberC
 */
public class RnUsuario {

    private RecuperarAtributo atributo = new RecuperarAtributo("sessao");
    private Session sessao = (Session) atributo.getAtributo();
    private Usuarios usuarios = new UsuariosDAO(sessao);

    public Usuario validar(Login login) throws RnExcessoes {
        Usuario usuario = this.usuarios.validar(login);
        if (usuario == null) {
            throw new RnExcessoes("Usuário ou senha inválida");
        }
        return usuario;
    }

    public Usuario autorizar(Usuario usuario) throws RnExcessoes {
        if (usuario.getAtivarconta().getIdativarconta() == 1) {
            throw new RnExcessoes("Usuário está bloqueado pelo Administrador");
        }
        return usuario;
    }
}
