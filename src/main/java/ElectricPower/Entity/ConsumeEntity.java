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
@Table(name = "tbl_consume")
@EntityListeners(AuditingEntityListener.class)
public class ConsumeEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "card_id")
	private String card_id;
	
	@Column(name = "box_id")
	private Integer box_id;
	
	@Column(name = "datetime_start")
	@CreatedDate
	private Timestamp datetime_start;
	
	@Column(name = "datetime_end")
	private Timestamp datetime_end;
	
	@Column(name = "consume_kw")
	private Double consume_kw;
	
	@Column(name = "money_spended")
	private Double money_spended;
	
	@Column(name = "session_id" ,columnDefinition = "TEXT")
	private String session_id;// text 
	
	@Column(name = "status")
	private Integer status;

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

	public Integer getBox_id() {
		return box_id;
	}

	public void setBox_id(Integer box_id) {
		this.box_id = box_id;
	}

	public Timestamp getDatetime_start() {
		return datetime_start;
	}

	public void setDatetime_start(Timestamp datetime_start) {
		this.datetime_start = datetime_start;
	}

	public Timestamp getDatetime_end() {
		return datetime_end;
	}

	public void setDatetime_end(Timestamp datetime_end) {
		this.datetime_end = datetime_end;
	}

	public Double getConsume_kw() {
		return consume_kw;
	}

	public void setConsume_kw(Double consume_kw) {
		this.consume_kw = consume_kw;
	}

	public Double getMoney_spended() {
		return money_spended;
	}

	public void setMoney_spended(Double money_spended) {
		this.money_spended = money_spended;
	}

	public String getSession_id() {
		return session_id;
	}

	public void setSession_id(String session_id) {
		this.session_id = session_id;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}
	
	
}
