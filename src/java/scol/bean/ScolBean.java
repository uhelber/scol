/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package scol.bean;

import scol.mapeamento.Login;
import scol.mapeamento.Usuario;
import java.io.Serializable;
import java.util.List;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import scol.mapeamento.Chamado;

/**
 *
 * @author UhelberC
 */
@ManagedBean
@SessionScoped
public class ScolBean implements Serializable {
    
    /*
     * Objetos
     */
    private Login usuarioLogin = new Login();
    private Usuario usuario = new Usuario();
    private Chamado chamado = new Chamado();
    
    /*
     * Listas
     */
    private List<Chamado> listarChamados;
    
    
    /**
     * Creates a new instance of ScolBean
     */
    public ScolBean() {
    }

    public Login getUsuarioLogin() {
        return usuarioLogin;
    }

    public void setUsuarioLogin(Login usuarioLogin) {
        this.usuarioLogin = usuarioLogin;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public List<Chamado> getListarChamados() {
        return listarChamados;
    }

    public void setListarChamados(List<Chamado> listarChamados) {
        this.listarChamados = listarChamados;
    }
    
    
}
