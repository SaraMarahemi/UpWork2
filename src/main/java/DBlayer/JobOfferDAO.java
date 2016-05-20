/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBlayer;

import Entities.Employee;
import Entities.Employer;
import Entities.Joboffer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 *
 * @author Sam
 */
public interface JobOfferDAO {
    
    public Joboffer Find ( Integer JobID ) ;
    
    public String Insert( Joboffer e ) ;
    public String Update ( Joboffer New );
    public String Update ( Joboffer Old , Joboffer New );
    public String Delete ( Integer JobID );
    public String Delete ( Joboffer e );
    
    public Employer GetEmployer ( Integer JobID) ;
    public Employer GetEmployer ( Joboffer e) ;
    public List<Employee> GetAllEmployee ( Integer JobID) ;
    public List<Employee> GetAllEmployee ( Joboffer e ) ;
    public String AddEmployee ( Employee e , Joboffer jo  ) ;
    public String AddEmployee ( Employee e ,  Integer JobID ) ;
    
    public List<Joboffer> Search (  Joboffer jo  ) ;
    
}
