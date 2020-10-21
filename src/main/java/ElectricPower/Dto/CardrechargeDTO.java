package ElectricPower.Dto;

import java.sql.Timestamp;

public class CardrechargeDTO extends AbstractDTO<CardrechargeDTO>{
	private String code;
	private Timestamp datetime_issued;
	private Double value;
	private Integer status;
	private Timestamp activedatetime;
	private String card_id;
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
