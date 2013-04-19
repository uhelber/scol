/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package scol.bean;

import scol.mapeamento.Login;
import scol.mapeamento.Usuario;
import java.io.Serializable;
import java.util.List;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import org.hibernate.Session;
import scol.classes.Mensagem;
import scol.db.RecuperarAtributo;
import scol.mapeamento.Chamado;
import scol.regrasdenegocios.RnUsuario;
import scol.regrasdenegocios.excessoes.RnExcessoes;

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
    private Mensagem mensagem = new Mensagem();
    
    
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

    /*
     *==============================================================================
     *                                 Usuário
     *==============================================================================
     */
    public String validarUsuario() throws RnExcessoes {
        RecuperarAtributo atributo = new RecuperarAtributo("sessao");
        Session sessao = (Session) atributo.getAtributo();
        RnUsuario rnUsuario = new RnUsuario();
        String ir = "";
        try {
            Usuario usuario = rnUsuario.validar(this.usuarioLogin);
            try {
                this.usuario = rnUsuario.autorizar(usuario);
                if (this.usuario != null) {
                    ir = "listarchamados";
                } else {
                    ir = "index";
                }
            } catch (RnExcessoes e) {
                this.mensagem.EviarMensagens("frm:aviso", FacesMessage.SEVERITY_ERROR, e.getMessage(), "");
            }
        } catch (RnExcessoes e) {
            this.mensagem.EviarMensagens("frm:aviso", FacesMessage.SEVERITY_ERROR, e.getMessage(), "Entre em contato com o Administrador...");
        }
        return ir;
    }
    
    
    /*
     * =============================================================================
     *                               Chamado
     * =============================================================================
     */
}
