/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Sam
 */
@Entity
@Table(name = "resumes_cv")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ResumesCv.findAll", query = "SELECT r FROM ResumesCv r"),
    @NamedQuery(name = "ResumesCv.findByField", query = "SELECT r FROM ResumesCv r WHERE r.field = :field"),
    @NamedQuery(name = "ResumesCv.findByResume", query = "SELECT r FROM ResumesCv r WHERE r.resume = :resume"),
    @NamedQuery(name = "ResumesCv.findBySendDateTime", query = "SELECT r FROM ResumesCv r WHERE r.sendDateTime = :sendDateTime"),
    @NamedQuery(name = "ResumesCv.findById", query = "SELECT r FROM ResumesCv r WHERE r.id = :id")})
public class ResumesCv implements Serializable {
    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "Field")
    private String field;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "Resume")
    private String resume;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "SendDateTime")
    private String sendDateTime;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    @JoinColumn(name = "EmployeeID", referencedColumnName = "Username")
    @ManyToOne
    private Employee employeeID;

    public ResumesCv() {
    }

    public ResumesCv(Integer id) {
        this.id = id;
    }

    public ResumesCv(Integer id, String field, String resume, String sendDateTime) {
        this.id = id;
        this.field = field;
        this.resume = resume;
        this.sendDateTime = sendDateTime;
    }

    public String getField() {
        return field;
    }

    public void setField(String field) {
        this.field = field;
    }

    public String getResume() {
        return resume;
    }

    public void setResume(String resume) {
        this.resume = resume;
    }

    public String getSendDateTime() {
        return sendDateTime;
    }

    public void setSendDateTime(String sendDateTime) {
        this.sendDateTime = sendDateTime;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Employee getEmployeeID() {
        return employeeID;
    }

    public void setEmployeeID(Employee employeeID) {
        this.employeeID = employeeID;
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
        if (!(object instanceof ResumesCv)) {
            return false;
        }
        ResumesCv other = (ResumesCv) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entities.ResumesCv[ id=" + id + " ]";
    }
    
}
