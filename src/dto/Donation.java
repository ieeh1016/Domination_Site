package dto;

import java.io.Serializable;

public class Donation implements Serializable {

	private static final long serialVersionUID = -4274700572038677000L;

	private String donationId;   //후원프로그램아이디
	private String donationName;		//후원프로그램이름
	private Integer donationPrice; 	//후원금액
	private String goalPrice; //목표금액
	private String donationPlace; //후원단체
	private String donationPeriod; //후원기간
	private String donationDescription; 	//후원설명
	private String filename;
	private int quantity;
	public Donation() {
		super();
	}

	public Donation(String donationNameId ,String donationName, Integer donationPrice) {
		this.donationId = donationNameId;
		this.donationName = donationName;
		this.donationPrice = donationPrice;
	}

	public String getDonationId() {
		return donationId;
	}

	public void setDonationId(String donationId) {
		this.donationId = donationId;
	}

	
	public String getDonationName() {
		return donationName;
	}

	public void setDonationName(String donationName) {
		this.donationName = donationName;
	}


	
	public Integer getDonationPrice() {
		return donationPrice;
	}

	public void setDonationPrice(Integer donationPrice) {
		this.donationPrice = donationPrice;
	}

	public String getGoalPrice() {
		return goalPrice;
	}

	public void setGoalPrice(String goalPrice) {
		this.goalPrice = goalPrice;
	}
	public String getDonationPlace() {
		return donationPlace;
	}

	public void setDonationPlace(String donationPlace) {
		this.donationPlace = donationPlace;
	}

	public String getDonationPeriod() {
		return donationPeriod;
	}

	public void setDonationPeriod(String donationPeriod) {
		this.donationPeriod = donationPeriod;
	}
	
	public String getDonationDescription() {
		return donationDescription;
	}

	public void setDonationDescription(String donationDescription) {
		this.donationDescription = donationDescription;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	public int getQuantity() {
		return quantity;
	}
	
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
}
