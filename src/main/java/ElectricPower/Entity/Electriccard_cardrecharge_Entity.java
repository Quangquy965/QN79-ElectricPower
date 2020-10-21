package ElectricPower.Entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.data.jpa.domain.support.AuditingEntityListener;


@Entity
@Table(name = "tbl_electriccard_cardrecharge")
@EntityListeners(AuditingEntityListener.class)
public class Electriccard_cardrecharge_Entity {

	@Id
	@Column(name = "card_id")
	private String card_id;
	

	@Column(name = "cardrecharge_code")
	private String cardrecharge_code;
	
	@Column(name = "datetime_recharge")
	private Timestamp datetime_recharge;

	public String getCard_id() {
		return card_id;
	}

	public void setCard_id(String card_id) {
		this.card_id = card_id;
	}

	public String getCardrecharge_code() {
		return cardrecharge_code;
	}

	public void setCardrecharge_code(String cardrecharge_code) {
		this.cardrecharge_code = cardrecharge_code;
	}

	public Timestamp getDatetime_recharge() {
		return datetime_recharge;
	}

	public void setDatetime_recharge(Timestamp datetime_recharge) {
		this.datetime_recharge = datetime_recharge;
	}
	
	
	
}
