/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package scol.mapeamento;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author UhelberC
 */
@Entity
@Table
public class AtivarConta implements Serializable {
    
    private Integer idativarconta;
    private String nome;

    @Id
    @GeneratedValue
    public Integer getIdativarconta() {
        return idativarconta;
    }

    public void setIdativarconta(Integer idativarconta) {
        this.idativarconta = idativarconta;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 23 * hash + (this.idativarconta != null ? this.idativarconta.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final AtivarConta other = (AtivarConta) obj;
        if (this.idativarconta != other.idativarconta && (this.idativarconta == null || !this.idativarconta.equals(other.idativarconta))) {
            return false;
        }
        return true;
    }

}
