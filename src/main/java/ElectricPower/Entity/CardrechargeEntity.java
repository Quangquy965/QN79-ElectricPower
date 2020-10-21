package ElectricPower.Entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.data.jpa.domain.support.AuditingEntityListener;

@Entity
@Table(name = "tbl_cardrecharge")
@EntityListeners(AuditingEntityListener.class)
public class CardrechargeEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "code")
	private String code;
	
	@Column(name = "datetime_issued")
	private Timestamp datetime_issued;
	
	@Column(name = "value")
	private Double value;
	
	@Column(name = "status")
	private Integer status;
	
	@Column(name = "activedatetime")
	private Timestamp activedatetime;
	
	@Column(name = "card_id")
	private String card_id;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Timestamp getDatetime_issued() {
		return datetime_issued;
	}

	public void setDatetime_issued(Timestamp datetime_issued) {
		this.datetime_issued = datetime_issued;
	}

	public Double getValue() {
		return value;
	}

	public void setValue(Double value) {
		this.value = value;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Timestamp getActivedatetime() {
		return activedatetime;
	}

	public void setActivedatetime(Timestamp activedatetime) {
		this.activedatetime = activedatetime;
	}

	public String getCard_id() {
		return card_id;
	}

	public void setCard_id(String card_id) {
		this.card_id = card_id;
	}
	
	

}
