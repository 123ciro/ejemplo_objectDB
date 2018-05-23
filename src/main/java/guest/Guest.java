package guest;
 
import java.io.Serializable;
import java.sql.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
 
@Entity
public class Guest implements Serializable {
    private static final long serialVersionUID = 1L;
 
    // Persistent Fields:
    @Id @GeneratedValue
    Long id;
    private String name;
    private Date signingDate;
    private String lastname;
    
    
 
    // Constructors:
    public Guest() {
    }
 
    public Guest(String name,String lastname) {
        this.name = name;
        this.signingDate = new Date(System.currentTimeMillis());
        this.lastname=lastname;
    }
 
    // String Representation:
    @Override
    public String toString() {
        return name + " (inscrito el" + signingDate + ")" + " su apellido es " + lastname;
    }
}