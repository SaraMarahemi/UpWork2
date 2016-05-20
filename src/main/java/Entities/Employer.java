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
import javax.persistence.Id;
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
@Table(name = "employer")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Employer.findAll", query = "SELECT e FROM Employer e"),
    @NamedQuery(name = "Employer.findByName", query = "SELECT e FROM Employer e WHERE e.name = :name"),
    @NamedQuery(name = "Employer.findByLastname", query = "SELECT e FROM Employer e WHERE e.lastname = :lastname"),
    @NamedQuery(name = "Employer.findByEmail", query = "SELECT e FROM Employer e WHERE e.email = :email"),
    @NamedQuery(name = "Employer.findByUsername", query = "SELECT e FROM Employer e WHERE e.username = :username"),
    @NamedQuery(name = "Employer.findByPassword", query = "SELECT e FROM Employer e WHERE e.password = :password"),
    @NamedQuery(name = "Employer.findByField", query = "SELECT e FROM Employer e WHERE e.field = :field"),
    @NamedQuery(name = "Employer.findByResume", query = "SELECT e FROM Employer e WHERE e.resume = :resume"),
    @NamedQuery(name = "Employer.findByCompanyName", query = "SELECT e FROM Employer e WHERE e.companyName = :companyName"),
    @NamedQuery(name = "Employer.findByCompanyWeb", query = "SELECT e FROM Employer e WHERE e.companyWeb = :companyWeb"),
    @NamedQuery(name = "Employer.findByCompanyAddress", query = "SELECT e FROM Employer e WHERE e.companyAddress = :companyAddress")})
public class Employer implements Serializable {
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
    @Size(max = 30)
    @Column(name = "CompanyName")
    private String companyName;
    @Size(max = 60)
    @Column(name = "CompanyWeb")
    private String companyWeb;
    @Size(max = 60)
    @Column(name = "CompanyAddress")
    private String companyAddress;
    @ManyToMany(mappedBy = "employerList")
    private List<Employee> employeeList;
    @OneToMany(mappedBy = "empolyerID")
    private List<Outsourceproject> outsourceprojectList;
    @OneToMany(mappedBy = "employerID")
    private List<Joboffer> jobofferList;

    public Employer() {
    }

    public Employer(String username) {
        this.username = username;
    }

    public Employer(String username, String name, String lastname, String email, String password) {
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

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getCompanyWeb() {
        return companyWeb;
    }

    public void setCompanyWeb(String companyWeb) {
        this.companyWeb = companyWeb;
    }

    public String getCompanyAddress() {
        return companyAddress;
    }

    public void setCompanyAddress(String companyAddress) {
        this.companyAddress = companyAddress;
    }

    @XmlTransient
    public List<Employee> getEmployeeList() {
        return employeeList;
    }

    public void setEmployeeList(List<Employee> employeeList) {
        this.employeeList = employeeList;
    }

    @XmlTransient
    public List<Outsourceproject> getOutsourceprojectList() {
        return outsourceprojectList;
    }

    public void setOutsourceprojectList(List<Outsourceproject> outsourceprojectList) {
        this.outsourceprojectList = outsourceprojectList;
    }

    @XmlTransient
    public List<Joboffer> getJobofferList() {
        return jobofferList;
    }

    public void setJobofferList(List<Joboffer> jobofferList) {
        this.jobofferList = jobofferList;
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
        if (!(object instanceof Employer)) {
            return false;
        }
        Employer other = (Employer) object;
        if ((this.username == null && other.username != null) || (this.username != null && !this.username.equals(other.username))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entities.Employer[ username=" + username + " ]";
    }
    
}
