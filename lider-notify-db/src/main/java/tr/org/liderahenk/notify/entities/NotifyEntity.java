package tr.org.liderahenk.notify.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "P_Notify")
public class NotifyEntity {
	
	// This class is auto-generated.
	// Please follow the (table and column) naming conventions.
	
	@Id
	@GeneratedValue
	@Column(name = "${entity}_ID")
	private Long id;
	
	// Other database columns...
	
	// Getter setters
	
}
