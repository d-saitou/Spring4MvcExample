package domain.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;
import util.common.StringUtility;

/**
 * JPA entity (table: t_scheduledtask_history)<br>
 * <p>
 *  The getter, setter, equals, and hashCode methods are automatically 
 *  generated by lombok at compile.
 */
@Entity @Table(name = "t_scheduledtask_history")
@Accessors(chain = true) @Getter @Setter @EqualsAndHashCode
public class T_Scheduledtask_History implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", nullable = false)
	private Integer id;
	
	@Column(name = "method", length = 30)
	private String method;
	
	@Column(name = "message", length = 100)
	private String message;
	
	@Column(name = "updatedate") @Temporal(TemporalType.TIMESTAMP)
	private Date updatedate;
	
	@Override
	public String toString() {
		return StringUtility.toStringForBeans(this);
	}
	
}
