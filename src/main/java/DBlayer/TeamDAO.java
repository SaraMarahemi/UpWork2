/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBlayer;

import Entities.Employer;
import Entities.Team;

/**
 *
 * @author Sam
 */
public interface TeamDAO {
    
    public Team Find ( String TeamID ) ;
    
    public String Insert( Team e ) ;
    public String Update ( Team New );
    public String Update ( Team Old , Team New );
    public String Delete ( String TeamID );
    public String Delete ( Team e );
    
}
