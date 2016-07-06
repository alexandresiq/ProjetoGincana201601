/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author alexandre
 */
@Entity
@Table(name = "tarefa")
@NamedQueries({
    @NamedQuery(name = "Tarefa.findAll", query = "SELECT t FROM Tarefa t")})
public class Tarefa implements Serializable {
    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @Column(name = "nome_tarefa")
    private String nomeTarefa;
    @Id
    @Basic(optional = false)
    @Column(name = "id_tarefa")
    private Long idTarefa;
    @Basic(optional = false)
    @Column(name = "desc_tarefa")
    private String descTarefa;
    @Basic(optional = false)
    @Column(name = "valor_tarefa")
    private String valorTarefa;

    public Tarefa() {
    }

    public Tarefa(Long idTarefa) {
        this.idTarefa = idTarefa;
    }

    public Tarefa(Long idTarefa, String nomeTarefa, String descTarefa, String valorTarefa) {
        this.idTarefa = idTarefa;
        this.nomeTarefa = nomeTarefa;
        this.descTarefa = descTarefa;
        this.valorTarefa = valorTarefa;
    }

    public String getNomeTarefa() {
        return nomeTarefa;
    }

    public void setNomeTarefa(String nomeTarefa) {
        this.nomeTarefa = nomeTarefa;
    }

    public Long getIdTarefa() {
        return idTarefa;
    }

    public void setIdTarefa(Long idTarefa) {
        this.idTarefa = idTarefa;
    }

    public String getDescTarefa() {
        return descTarefa;
    }

    public void setDescTarefa(String descTarefa) {
        this.descTarefa = descTarefa;
    }

    public String getValorTarefa() {
        return valorTarefa;
    }

    public void setValorTarefa(String valorTarefa) {
        this.valorTarefa = valorTarefa;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idTarefa != null ? idTarefa.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Tarefa)) {
            return false;
        }
        Tarefa other = (Tarefa) object;
        if ((this.idTarefa == null && other.idTarefa != null) || (this.idTarefa != null && !this.idTarefa.equals(other.idTarefa))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Tarefa[ idTarefa=" + idTarefa + " ]";
    }
    
}
