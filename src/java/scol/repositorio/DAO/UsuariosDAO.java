/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package scol.repositorio.DAO;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.criterion.Order;
import scol.mapeamento.Login;
import scol.mapeamento.Usuario;
import scol.repositorio.Usuarios;

/**
 *
 * @author Uhelber
 */
public class UsuariosDAO implements Usuarios{
    private Session sessao;

    public UsuariosDAO(Session sessao) {
        this.sessao = sessao;
    }
    
    @Override
    public List<Usuario> todos() {
        List<Usuario> usuarios = this.sessao.createCriteria(Usuario.class)
                .addOrder(Order.asc("nome"))
                .list();
        return usuarios;
    }
    
    @Override
    public List<Usuario> todosSemPermissao() {
        List<Usuario> usuarios = this.sessao.createQuery("select usr from Usuario usr where usr.permissao.idpermissao = :permissao")
                .setInteger("permissao", 1)
                .list();
        return usuarios;
    }
    
    @Override
    public List<Usuario> todosTecnicos() {
        List<Usuario> usuarios = this.sessao.createQuery("select usr from Usuario usr where usr.permissao.idpermissao != :permissao")
                .setInteger("permissao", 1)
                .list();
        return usuarios;
    }

    @Override
    public List<Usuario> todosAdministradores() {
        List<Usuario> usuarios = this.sessao.createQuery("select usr from Usuario usr where usr.permissao.idpermissao = :permissao")
                .setInteger("permissao", 3)
                .list();
        return usuarios;
    }

    @Override
    public Usuario porId(Integer id) {
        Usuario usuario = (Usuario) this.sessao.get(Usuario.class, id);
        return usuario;
    }

    @Override
    public Usuario validar(Login login) {
        Usuario usuario = (Usuario) this.sessao.createQuery("select usr from Usuario usr where usr.login.usuario = :usuario and usr.login.senha = :senha")
                .setString("usuario", login.getUsuario())
                .setString("senha", login.getSenha())
                .uniqueResult();
        return usuario;
    }

}
