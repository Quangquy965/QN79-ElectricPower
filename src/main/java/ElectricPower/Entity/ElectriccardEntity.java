package ElectricPower.Entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

@Entity
@Table(name = "tbl_electriccard")
@EntityListeners(AuditingEntityListener.class)
public class ElectriccardEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "card_id")
	private String card_id;
	
	@Column(name = "pin_code")
	private String pin_code;
	
	@Column(name = "money")
	private Double money;
	
	@Column(name = "card_status")
	private Integer card_status;
	
	@Column(name = "pin_status")
	private Integer pin_status;
	
	@Column(name = "isdeleted")
	private Integer isdeleted;
	
	@Column(name = "createddate")
	@CreatedDate
	private Timestamp createddate;
	
	@Column(name = "activedate")
	private Timestamp activedate;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCard_id() {
		return card_id;
	}

	public void setCard_id(String card_id) {
		this.card_id = card_id;
	}

	public String getPin_code() {
		return pin_code;
	}

	public void setPin_code(String pin_code) {
		this.pin_code = pin_code;
	}

	public Double getMoney() {
		return money;
	}

	public void setMoney(Double money) {
		this.money = money;
	}

	public Integer getCard_status() {
		return card_status;
	}

	public void setCard_status(Integer card_status) {
		this.card_status = card_status;
	}

	public Integer getPin_status() {
		return pin_status;
	}

	public void setPin_status(Integer pin_status) {
		this.pin_status = pin_status;
	}

	public Integer getIsdeleted() {
		return isdeleted;
	}

	public void setIsdeleted(Integer isdeleted) {
		this.isdeleted = isdeleted;
	}

	public Timestamp getCreateddate() {
		return createddate;
	}

	public void setCreateddate(Timestamp createddate) {
		this.createddate = createddate;
	}

	public Timestamp getActivedate() {
		return activedate;
	}

	public void setActivedate(Timestamp activedate) {
		this.activedate = activedate;
	}
	
	
}
