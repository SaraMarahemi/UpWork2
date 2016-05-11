/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBlayer;

import Entities.Employer;
import Entities.Joboffer;

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
    
}
