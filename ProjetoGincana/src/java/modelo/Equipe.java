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
@Table(name = "equipe")
@NamedQueries({
    @NamedQuery(name = "Equipe.findAll", query = "SELECT e FROM Equipe e")})
public class Equipe implements Serializable {
    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @Column(name = "foto")
    private String foto;
    @Basic(optional = false)
    @Column(name = "simbolo")
    private String simbolo;
    @Basic(optional = false)
    @Column(name = "integrante")
    private String integrante;
    @Basic(optional = false)
    @Column(name = "cor")
    private String cor;
    @Basic(optional = false)
    @Column(name = "conselheiro")
    private String conselheiro;
    @Basic(optional = false)
    @Column(name = "mascote")
    private String mascote;
    @Basic(optional = false)
    @Column(name = "nome_equipe")
    private String nomeEquipe;
    @Id
    @Basic(optional = false)
    @Column(name = "id_equipe")
    private Long idEquipe;

    public Equipe() {
    }

    public Equipe(Long idEquipe) {
        this.idEquipe = idEquipe;
    }

    public Equipe(Long idEquipe, String foto, String simbolo, String integrante, String cor, String conselheiro, String mascote, String nomeEquipe) {
        this.idEquipe = idEquipe;
        this.foto = foto;
        this.simbolo = simbolo;
        this.integrante = integrante;
        this.cor = cor;
        this.conselheiro = conselheiro;
        this.mascote = mascote;
        this.nomeEquipe = nomeEquipe;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public String getSimbolo() {
        return simbolo;
    }

    public void setSimbolo(String simbolo) {
        this.simbolo = simbolo;
    }

    public String getIntegrante() {
        return integrante;
    }

    public void setIntegrante(String integrante) {
        this.integrante = integrante;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public String getConselheiro() {
        return conselheiro;
    }

    public void setConselheiro(String conselheiro) {
        this.conselheiro = conselheiro;
    }

    public String getMascote() {
        return mascote;
    }

    public void setMascote(String mascote) {
        this.mascote = mascote;
    }

    public String getNomeEquipe() {
        return nomeEquipe;
    }

    public void setNomeEquipe(String nomeEquipe) {
        this.nomeEquipe = nomeEquipe;
    }

    public Long getIdEquipe() {
        return idEquipe;
    }

    public void setIdEquipe(Long idEquipe) {
        this.idEquipe = idEquipe;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idEquipe != null ? idEquipe.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Equipe)) {
            return false;
        }
        Equipe other = (Equipe) object;
        if ((this.idEquipe == null && other.idEquipe != null) || (this.idEquipe != null && !this.idEquipe.equals(other.idEquipe))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Equipe[ idEquipe=" + idEquipe + " ]";
    }
    
}
