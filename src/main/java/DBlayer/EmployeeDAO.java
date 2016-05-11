/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBlayer;

import Entities.Employee;

/**
 *
 * @author Sam
 */
public interface EmployeeDAO {
    
    public Employee Find ( String EmployeeID ) ;
    
    public String Insert( Employee e ) ;
    public String Update ( Employee New );
    public String Update ( Employee Old , Employee New );
    public String Delete ( String EmployeeID );
    public String Delete ( Employee e );
    
}
