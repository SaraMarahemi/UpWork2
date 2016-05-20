/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBlayer;

import Entities.Employee;
import Entities.Joboffer;
import Entities.ResumesCv;

/**
 *
 * @author Sam
 */
public interface ResumeDAO {
    
    public ResumesCv Find ( Integer ResumeID ) ;
    
    public String Insert( ResumesCv e ) ;
    public String Update ( ResumesCv New );
    public String Update ( ResumesCv Old , ResumesCv New );
    public String Delete ( Integer ResumeID );
    public String Delete ( ResumesCv e );
    
    public Employee GetEmployee (Integer id) ;
    public Employee GetEmployee ( ResumesCv e ) ;
    
    public String SetEmployee( Employee e , Integer ResumeID ) ;
    public String SetEmployee( Employee e , ResumesCv RC ) ;
    
    
}
