package ElectricPower.Dto;

import java.sql.Timestamp;

public class ElectriccardDTO extends AbstractDTO<ElectriccardDTO>{
	private String card_id;
	private String pin_code;
	private Double money;
	private Integer card_status;
	private Integer pin_status;
	private Integer isdeleted;
	private Timestamp createddate;
	private Timestamp activedate;
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
