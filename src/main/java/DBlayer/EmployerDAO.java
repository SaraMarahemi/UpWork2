/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBlayer;

import Entities.Employee;
import Entities.Employer;

/**
 *
 * @author Sam
 */
public interface EmployerDAO {
    
    public Employer Find ( String EmployerID ) ;
    
    public String Insert( Employer e ) ;
    public String Update ( Employer New );
    public String Update ( Employer Old , Employer New );
    public String Delete ( String EmployerID );
    public String Delete ( Employer e );
    
}
