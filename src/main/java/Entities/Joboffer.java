/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Sam
 */
@Entity
@Table(name = "joboffer")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Joboffer.findAll", query = "SELECT j FROM Joboffer j"),
    @NamedQuery(name = "Joboffer.findByJobTitle", query = "SELECT j FROM Joboffer j WHERE j.jobTitle = :jobTitle"),
    @NamedQuery(name = "Joboffer.findByJobSalary", query = "SELECT j FROM Joboffer j WHERE j.jobSalary = :jobSalary"),
    @NamedQuery(name = "Joboffer.findByJobType", query = "SELECT j FROM Joboffer j WHERE j.jobType = :jobType"),
    @NamedQuery(name = "Joboffer.findByInfo", query = "SELECT j FROM Joboffer j WHERE j.info = :info"),
    @NamedQuery(name = "Joboffer.findBySkills", query = "SELECT j FROM Joboffer j WHERE j.skills = :skills"),
    @NamedQuery(name = "Joboffer.findByCompanyName", query = "SELECT j FROM Joboffer j WHERE j.companyName = :companyName"),
    @NamedQuery(name = "Joboffer.findByJobID", query = "SELECT j FROM Joboffer j WHERE j.jobID = :jobID")})
public class Joboffer implements Serializable {
    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "JobTitle")
    private String jobTitle;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "JobSalary")
    private String jobSalary;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "JobType")
    private String jobType;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "Info")
    private String info;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "Skills")
    private String skills;
    @Size(max = 50)
    @Column(name = "CompanyName")
    private String companyName;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "JobID")
    private Integer jobID;
    @ManyToMany(mappedBy = "jobofferList")
    private List<Employee> employeeList;
    @JoinColumn(name = "EmployerID", referencedColumnName = "Username")
    @ManyToOne
    private Employer employerID;

    public Joboffer() {
    }

    public Joboffer(Integer jobID) {
        this.jobID = jobID;
    }

    public Joboffer(Integer jobID, String jobTitle, String jobSalary, String jobType, String info, String skills) {
        this.jobID = jobID;
        this.jobTitle = jobTitle;
        this.jobSalary = jobSalary;
        this.jobType = jobType;
        this.info = info;
        this.skills = skills;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    public String getJobSalary() {
        return jobSalary;
    }

    public void setJobSalary(String jobSalary) {
        this.jobSalary = jobSalary;
    }

    public String getJobType() {
        return jobType;
    }

    public void setJobType(String jobType) {
        this.jobType = jobType;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public String getSkills() {
        return skills;
    }

    public void setSkills(String skills) {
        this.skills = skills;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public Integer getJobID() {
        return jobID;
    }

    public void setJobID(Integer jobID) {
        this.jobID = jobID;
    }

    @XmlTransient
    public List<Employee> getEmployeeList() {
        return employeeList;
    }

    public void setEmployeeList(List<Employee> employeeList) {
        this.employeeList = employeeList;
    }

    public Employer getEmployerID() {
        return employerID;
    }

    public void setEmployerID(Employer employerID) {
        this.employerID = employerID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (jobID != null ? jobID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Joboffer)) {
            return false;
        }
        Joboffer other = (Joboffer) object;
        if ((this.jobID == null && other.jobID != null) || (this.jobID != null && !this.jobID.equals(other.jobID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entities.Joboffer[ jobID=" + jobID + " ]";
    }
    
}
