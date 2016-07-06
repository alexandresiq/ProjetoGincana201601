/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author alexandre
 */
@Entity
@Table(name = "desporto")
@NamedQueries({
    @NamedQuery(name = "Desporto.findAll", query = "SELECT d FROM Desporto d")})
public class Desporto implements Serializable {
    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @Column(name = "nome_desporto")
    private String nomeDesporto;
    @Basic(optional = false)
    @Column(name = "desc_desporto")
    private String descDesporto;
    @Id
    @Basic(optional = false)
    @Column(name = "id_desporto")
    private Long idDesporto;
    @Basic(optional = false)
    @Column(name = "valor_desporto")
    private String valorDesporto;
    @OneToMany(mappedBy = "idDesporto")
    private List<PontuacaoDesporto> pontuacaoDesportoList;

    public Desporto() {
    }

    public Desporto(Long idDesporto) {
        this.idDesporto = idDesporto;
    }

    public Desporto(Long idDesporto, String nomeDesporto, String descDesporto, String valorDesporto) {
        this.idDesporto = idDesporto;
        this.nomeDesporto = nomeDesporto;
        this.descDesporto = descDesporto;
        this.valorDesporto = valorDesporto;
    }

    public String getNomeDesporto() {
        return nomeDesporto;
    }

    public void setNomeDesporto(String nomeDesporto) {
        this.nomeDesporto = nomeDesporto;
    }

    public String getDescDesporto() {
        return descDesporto;
    }

    public void setDescDesporto(String descDesporto) {
        this.descDesporto = descDesporto;
    }

    public Long getIdDesporto() {
        return idDesporto;
    }

    public void setIdDesporto(Long idDesporto) {
        this.idDesporto = idDesporto;
    }

    public String getValorDesporto() {
        return valorDesporto;
    }

    public void setValorDesporto(String valorDesporto) {
        this.valorDesporto = valorDesporto;
    }

    public List<PontuacaoDesporto> getPontuacaoDesportoList() {
        return pontuacaoDesportoList;
    }

    public void setPontuacaoDesportoList(List<PontuacaoDesporto> pontuacaoDesportoList) {
        this.pontuacaoDesportoList = pontuacaoDesportoList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idDesporto != null ? idDesporto.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Desporto)) {
            return false;
        }
        Desporto other = (Desporto) object;
        if ((this.idDesporto == null && other.idDesporto != null) || (this.idDesporto != null && !this.idDesporto.equals(other.idDesporto))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Desporto[ idDesporto=" + idDesporto + " ]";
    }
    
}
