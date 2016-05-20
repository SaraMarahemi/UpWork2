/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ServiceLayer;

import DBlayer.EmployeeDAOService;
import DBlayer.JobOfferDAOService;
import Entities.Employee;
import Entities.Joboffer;
import java.util.List;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.servlet.ServletContext;

/**
 *
 * @author Sam
 */
public class EmployeeManager {
    
    private ServletContext SC ;

    public EmployeeManager(ServletContext SC) {
        this.SC = SC;
    }
    
    public Employee Authneticate ( String UserName , String Password )
    {
        EmployeeDAOService EDS = new EmployeeDAOService(SC) ;
        Employee emp = EDS.Find(UserName) ;
        if ( emp != null &&  emp.getPassword().equals(Password) )
        {
            return emp ;
        }
        else
        {
            return null ;
        }
    }
    
    
    public boolean Register ( Employee e )
    {
        EmployeeDAOService EDS = new EmployeeDAOService(SC) ;
        Employee emp = EDS.Find(e.getUsername()) ;
        if ( emp != null  )
        {
            return false ;
        }
        else
        {
            EDS.Insert(e);
            return true ;
        }
        
        
        
        
        
    }
    
    
    public String Update ( Employee  e )
    {
        EmployeeDAOService EDS = new EmployeeDAOService(SC) ;
        Employee emp = EDS.Find(e.getUsername()) ;
        if ( emp != null  )
        {
            String Result = EDS.Update(emp.getUsername(), e) ;
            return Result ;
        }
        else
        {
            
            return "User Not Found" ;
        }
        
    }
    
    public String SendJobRequest ( Integer JobID , Employee e  )
    {
        JobOfferDAOService  JOService = new JobOfferDAOService(SC) ;
        Joboffer jo = JOService.Find(JobID) ;
        if ( jo != null )
        {
            String Result = JOService.AddEmployee(e,  jo) ;
            return Result ;
        }
        else
        {
            return "Job Not Found" ;
        }
        
    }
    
    public List<Joboffer> Search ( Joboffer j  ) 
    {
        JobOfferDAOService  JOService = new JobOfferDAOService(SC) ;
        
        List <Joboffer> jo  = JOService.Search(j) ;
        return jo ;
    }
    
    
            
    
    
    
}
