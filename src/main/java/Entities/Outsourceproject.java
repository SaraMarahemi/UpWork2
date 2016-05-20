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
@Table(name = "outsourceproject")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Outsourceproject.findAll", query = "SELECT o FROM Outsourceproject o"),
    @NamedQuery(name = "Outsourceproject.findByProjectTitle", query = "SELECT o FROM Outsourceproject o WHERE o.projectTitle = :projectTitle"),
    @NamedQuery(name = "Outsourceproject.findByProjectDeadLine", query = "SELECT o FROM Outsourceproject o WHERE o.projectDeadLine = :projectDeadLine"),
    @NamedQuery(name = "Outsourceproject.findByProjectIncome", query = "SELECT o FROM Outsourceproject o WHERE o.projectIncome = :projectIncome"),
    @NamedQuery(name = "Outsourceproject.findByProjectID", query = "SELECT o FROM Outsourceproject o WHERE o.projectID = :projectID")})
public class Outsourceproject implements Serializable {
    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "ProjectTitle")
    private String projectTitle;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "ProjectDeadLine")
    private String projectDeadLine;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "ProjectIncome")
    private String projectIncome;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "ProjectID")
    private Integer projectID;
    @JoinColumn(name = "EmpolyerID", referencedColumnName = "Username")
    @ManyToOne
    private Employer empolyerID;

    public Outsourceproject() {
    }

    public Outsourceproject(Integer projectID) {
        this.projectID = projectID;
    }

    public Outsourceproject(Integer projectID, String projectTitle, String projectDeadLine, String projectIncome) {
        this.projectID = projectID;
        this.projectTitle = projectTitle;
        this.projectDeadLine = projectDeadLine;
        this.projectIncome = projectIncome;
    }

    public String getProjectTitle() {
        return projectTitle;
    }

    public void setProjectTitle(String projectTitle) {
        this.projectTitle = projectTitle;
    }

    public String getProjectDeadLine() {
        return projectDeadLine;
    }

    public void setProjectDeadLine(String projectDeadLine) {
        this.projectDeadLine = projectDeadLine;
    }

    public String getProjectIncome() {
        return projectIncome;
    }

    public void setProjectIncome(String projectIncome) {
        this.projectIncome = projectIncome;
    }

    public Integer getProjectID() {
        return projectID;
    }

    public void setProjectID(Integer projectID) {
        this.projectID = projectID;
    }

    public Employer getEmpolyerID() {
        return empolyerID;
    }

    public void setEmpolyerID(Employer empolyerID) {
        this.empolyerID = empolyerID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (projectID != null ? projectID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Outsourceproject)) {
            return false;
        }
        Outsourceproject other = (Outsourceproject) object;
        if ((this.projectID == null && other.projectID != null) || (this.projectID != null && !this.projectID.equals(other.projectID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entities.Outsourceproject[ projectID=" + projectID + " ]";
    }
    
}
