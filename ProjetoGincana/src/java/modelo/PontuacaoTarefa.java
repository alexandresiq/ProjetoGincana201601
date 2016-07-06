/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;
import java.math.BigInteger;
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
@Table(name = "pontuacao_tarefa")
@NamedQueries({
    @NamedQuery(name = "PontuacaoTarefa.findAll", query = "SELECT p FROM PontuacaoTarefa p")})
public class PontuacaoTarefa implements Serializable {
    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @Column(name = "ponto_ptarefa")
    private String pontoPtarefa;
    @Id
    @Basic(optional = false)
    @Column(name = "id_ptarefa")
    private Long idPtarefa;
    @Column(name = "id_tarefa")
    private BigInteger idTarefa;
    @Column(name = "id_equipe")
    private BigInteger idEquipe;

    public PontuacaoTarefa() {
    }

    public PontuacaoTarefa(Long idPtarefa) {
        this.idPtarefa = idPtarefa;
    }

    public PontuacaoTarefa(Long idPtarefa, String pontoPtarefa) {
        this.idPtarefa = idPtarefa;
        this.pontoPtarefa = pontoPtarefa;
    }

    public String getPontoPtarefa() {
        return pontoPtarefa;
    }

    public void setPontoPtarefa(String pontoPtarefa) {
        this.pontoPtarefa = pontoPtarefa;
    }

    public Long getIdPtarefa() {
        return idPtarefa;
    }

    public void setIdPtarefa(Long idPtarefa) {
        this.idPtarefa = idPtarefa;
    }

    public BigInteger getIdTarefa() {
        return idTarefa;
    }

    public void setIdTarefa(BigInteger idTarefa) {
        this.idTarefa = idTarefa;
    }

    public BigInteger getIdEquipe() {
        return idEquipe;
    }

    public void setIdEquipe(BigInteger idEquipe) {
        this.idEquipe = idEquipe;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idPtarefa != null ? idPtarefa.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof PontuacaoTarefa)) {
            return false;
        }
        PontuacaoTarefa other = (PontuacaoTarefa) object;
        if ((this.idPtarefa == null && other.idPtarefa != null) || (this.idPtarefa != null && !this.idPtarefa.equals(other.idPtarefa))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.PontuacaoTarefa[ idPtarefa=" + idPtarefa + " ]";
    }
    
}
