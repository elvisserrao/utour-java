/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;

/**
 *
 * @author Elvis Serrão
 */
@Entity
@NamedQueries({
    @NamedQuery(name = "Roteiro.findAll", query = "SELECT r FROM Roteiro r")})
public class Roteiro implements Serializable {

    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    private String titulo;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    private Integer id;
    @JoinColumn(name = "horario_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Horario horarioId;
    @JoinColumn(name = "local_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Local localId;
    @OneToMany(mappedBy = "roteiroId")
    private Collection<Usuario> usuarioCollection;

    public Roteiro() {
    }

    public Roteiro(Integer id) {
        this.id = id;
    }

    public Roteiro(Integer id, String titulo) {
        this.id = id;
        this.titulo = titulo;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Horario getHorarioId() {
        return horarioId;
    }

    public void setHorarioId(Horario horarioId) {
        this.horarioId = horarioId;
    }

    public Local getLocalId() {
        return localId;
    }

    public void setLocalId(Local localId) {
        this.localId = localId;
    }

    public Collection<Usuario> getUsuarioCollection() {
        return usuarioCollection;
    }

    public void setUsuarioCollection(Collection<Usuario> usuarioCollection) {
        this.usuarioCollection = usuarioCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Roteiro)) {
            return false;
        }
        Roteiro other = (Roteiro) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Roteiro[ id=" + id + " ]";
    }
    
}
