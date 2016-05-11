/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
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
@Table(name = "employee", catalog = "neteng", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Employee.findAll", query = "SELECT e FROM Employee e"),
    @NamedQuery(name = "Employee.findByName", query = "SELECT e FROM Employee e WHERE e.name = :name"),
    @NamedQuery(name = "Employee.findByLastname", query = "SELECT e FROM Employee e WHERE e.lastname = :lastname"),
    @NamedQuery(name = "Employee.findByEmail", query = "SELECT e FROM Employee e WHERE e.email = :email"),
    @NamedQuery(name = "Employee.findByUsername", query = "SELECT e FROM Employee e WHERE e.username = :username"),
    @NamedQuery(name = "Employee.findByPassword", query = "SELECT e FROM Employee e WHERE e.password = :password"),
    @NamedQuery(name = "Employee.findByField", query = "SELECT e FROM Employee e WHERE e.field = :field"),
    @NamedQuery(name = "Employee.findByResume", query = "SELECT e FROM Employee e WHERE e.resume = :resume"),
    @NamedQuery(name = "Employee.findByShowName", query = "SELECT e FROM Employee e WHERE e.showName = :showName"),
    @NamedQuery(name = "Employee.findByShowLastname", query = "SELECT e FROM Employee e WHERE e.showLastname = :showLastname"),
    @NamedQuery(name = "Employee.findByShowEmail", query = "SELECT e FROM Employee e WHERE e.showEmail = :showEmail"),
    @NamedQuery(name = "Employee.findByShowUsername", query = "SELECT e FROM Employee e WHERE e.showUsername = :showUsername"),
    @NamedQuery(name = "Employee.findByShowField", query = "SELECT e FROM Employee e WHERE e.showField = :showField")})
public class Employee implements Serializable {
    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "Name")
    private String name;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "Lastname")
    private String lastname;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "Email")
    private String email;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "Username")
    private String username;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "Password")
    private String password;
    @Size(max = 30)
    @Column(name = "Field")
    private String field;
    @Size(max = 30)
    @Column(name = "Resume")
    private String resume;
    @Column(name = "ShowName")
    private Boolean showName;
    @Column(name = "ShowLastname")
    private Boolean showLastname;
    @Column(name = "ShowEmail")
    private Boolean showEmail;
    @Column(name = "ShowUsername")
    private Boolean showUsername;
    @Column(name = "ShowField")
    private Boolean showField;
    @JoinTable(name = "subscribe", joinColumns = {
        @JoinColumn(name = "EmployeeID", referencedColumnName = "Username")}, inverseJoinColumns = {
        @JoinColumn(name = "EmployerID", referencedColumnName = "Username")})
    @ManyToMany(fetch = FetchType.LAZY)
    private Collection<Employer> employerCollection;
    @JoinTable(name = "jobapplicant", joinColumns = {
        @JoinColumn(name = "EmployeeID", referencedColumnName = "Username")}, inverseJoinColumns = {
        @JoinColumn(name = "JobID", referencedColumnName = "JobID")})
    @ManyToMany(fetch = FetchType.LAZY)
    private Collection<Joboffer> jobofferCollection;
    @OneToMany(mappedBy = "employeeID", fetch = FetchType.LAZY)
    private Collection<ResumesCv> resumesCvCollection;

    public Employee() {
    }

    public Employee(String username) {
        this.username = username;
    }

    public Employee(String username, String name, String lastname, String email, String password) {
        this.username = username;
        this.name = name;
        this.lastname = lastname;
        this.email = email;
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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

    public Boolean getShowName() {
        return showName;
    }

    public void setShowName(Boolean showName) {
        this.showName = showName;
    }

    public Boolean getShowLastname() {
        return showLastname;
    }

    public void setShowLastname(Boolean showLastname) {
        this.showLastname = showLastname;
    }

    public Boolean getShowEmail() {
        return showEmail;
    }

    public void setShowEmail(Boolean showEmail) {
        this.showEmail = showEmail;
    }

    public Boolean getShowUsername() {
        return showUsername;
    }

    public void setShowUsername(Boolean showUsername) {
        this.showUsername = showUsername;
    }

    public Boolean getShowField() {
        return showField;
    }

    public void setShowField(Boolean showField) {
        this.showField = showField;
    }

    @XmlTransient
    public Collection<Employer> getEmployerCollection() {
        return employerCollection;
    }

    public void setEmployerCollection(Collection<Employer> employerCollection) {
        this.employerCollection = employerCollection;
    }

    @XmlTransient
    public Collection<Joboffer> getJobofferCollection() {
        return jobofferCollection;
    }

    public void setJobofferCollection(Collection<Joboffer> jobofferCollection) {
        this.jobofferCollection = jobofferCollection;
    }

    @XmlTransient
    public Collection<ResumesCv> getResumesCvCollection() {
        return resumesCvCollection;
    }

    public void setResumesCvCollection(Collection<ResumesCv> resumesCvCollection) {
        this.resumesCvCollection = resumesCvCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (username != null ? username.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Employee)) {
            return false;
        }
        Employee other = (Employee) object;
        if ((this.username == null && other.username != null) || (this.username != null && !this.username.equals(other.username))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entities.Employee[ username=" + username + " ]";
    }
    
}
