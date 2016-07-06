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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author alexandre
 */
@Entity
@Table(name = "pontuacao_desporto")
@NamedQueries({
    @NamedQuery(name = "PontuacaoDesporto.findAll", query = "SELECT p FROM PontuacaoDesporto p")})
public class PontuacaoDesporto implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "id_pdesporto")
    private Long idPdesporto;
    @Basic(optional = false)
    @Column(name = "ponto_pdesporto")
    private String pontoPdesporto;
    @Column(name = "id_equipe")
    private BigInteger idEquipe;
    @JoinColumn(name = "id_desporto", referencedColumnName = "id_desporto")
    @ManyToOne
    private Desporto idDesporto;

    public PontuacaoDesporto() {
    }

    public PontuacaoDesporto(Long idPdesporto) {
        this.idPdesporto = idPdesporto;
    }

    public PontuacaoDesporto(Long idPdesporto, String pontoPdesporto) {
        this.idPdesporto = idPdesporto;
        this.pontoPdesporto = pontoPdesporto;
    }

    public Long getIdPdesporto() {
        return idPdesporto;
    }

    public void setIdPdesporto(Long idPdesporto) {
        this.idPdesporto = idPdesporto;
    }

    public String getPontoPdesporto() {
        return pontoPdesporto;
    }

    public void setPontoPdesporto(String pontoPdesporto) {
        this.pontoPdesporto = pontoPdesporto;
    }

    public BigInteger getIdEquipe() {
        return idEquipe;
    }

    public void setIdEquipe(BigInteger idEquipe) {
        this.idEquipe = idEquipe;
    }

    public Desporto getIdDesporto() {
        return idDesporto;
    }

    public void setIdDesporto(Desporto idDesporto) {
        this.idDesporto = idDesporto;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idPdesporto != null ? idPdesporto.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof PontuacaoDesporto)) {
            return false;
        }
        PontuacaoDesporto other = (PontuacaoDesporto) object;
        if ((this.idPdesporto == null && other.idPdesporto != null) || (this.idPdesporto != null && !this.idPdesporto.equals(other.idPdesporto))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.PontuacaoDesporto[ idPdesporto=" + idPdesporto + " ]";
    }
    
}
