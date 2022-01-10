package dao;

import java.util.ArrayList;

import dto.Donation;


public class DonationRepository {

	private ArrayList<Donation> listOfDonationproducts = new ArrayList<Donation>();
	private static DonationRepository instance = new DonationRepository();
	public static DonationRepository getInstance(){
		return instance;
	} 
	public DonationRepository() {
		
		Donation donation1=new Donation("D001","지원이를 도와주실래요??",50000);
		donation1.setGoalPrice("10000000");
		donation1.setDonationPlace("엔젤스헤이븐");
		donation1.setDonationPeriod("2021/11/22 ~ 2021/12/25");
		donation1.setDonationDescription("지원이는 방광에서 시작된 악성종양이 이곳저곳으로 전이되었습니다. 맞는 약이 없어 여러 항암 약을 시도해야 하는 지연이는 힘들어도 '괜찮다, 할 수 있다' 말합니다. 이런 지원이에게 조금이나마 힘이 되어 주실래요? 지원이는 당신의 따스한 손길을 기다리고있습니다.");
		donation1.setFilename("D1.png");
	    
	    
		Donation donation2=new Donation("D002","장얘 영유아들을 도와주세요!",10000);
		donation2.setGoalPrice("5000000");
		donation2.setDonationPlace("사단법인 장애영유아 프렌즈");
		donation2.setDonationPeriod("2021/10/10 ~ 2021/12/29");
		donation2.setDonationDescription("막대한 의료비와 경제적 어려움으로 인해 치료를 받을 수 없는 장애아동이 성장기인 영유아기에 꼭 필요한 치료를 받을 수 있도록 지원하는 장애영유아 지원 캠페인 늦지 않게 지켜주세요. 여러분의 손길이 아이들을 살릴수 있습니다.");
		donation2.setFilename("D2.png");
	    
		Donation donation3=new Donation("D003","윤호가족에 따뜻한 힘을 모아주세요!",30000);
		donation3.setGoalPrice("3000000");
		donation3.setDonationPlace("사단법인 유쾌한공동체");
		donation3.setDonationPeriod("2021/8/10 ~ 2021/11/30");
		donation3.setDonationDescription("3년 전 엄마가 가출을 하고 난후 윤호는 5살 동생에게 엄마가 되었습니다. 사춘기조차 사치인 이 아이, 나이만 15살 일찍 철들어버린 윤호에게 사춘기는 사치입니다. 동생이 예쁘고 잘 자라줘서 고맙다는 윤호. 윤호가족에게 따뜻한 힘을 모아주세요.");
		donation3.setFilename("D3.png");
		
		Donation donation4=new Donation("D004","미얀마 가족에게 보낼 운송비가 필요해요",50000);
		donation4.setGoalPrice("10000000");
		donation4.setDonationPlace("사단법인 유어프렌즈");
		donation4.setDonationPeriod("2021/9/2 ~ 2021/12/27");
		donation4.setDonationDescription("군부 구테타가 일어난 지 7개월이 다 되어가는 지금 미얀마는 희생자들이 발생하고 있고, 불안정한 상태입니다. 노동자로, 유학생으로 한국으로 건너와 생활하는 미얀마인들은 고국에 있는 가족 걱정에 하루도 마음이 편할 날이 없습니다.도움을 요청하는 미얀마의 손을 잡아주세요.");
		donation4.setFilename("D4.png");
	    
		listOfDonationproducts.add(donation1);
		listOfDonationproducts.add(donation2);
		listOfDonationproducts.add(donation3);
		listOfDonationproducts.add(donation4);
	    
		
	}

	
	public ArrayList<Donation> getAllDonationproducts() {
		return listOfDonationproducts;
	}
	
	public Donation getDonationById(String donationId) {
		Donation DonationById=null;

		for (int i = 0; i < listOfDonationproducts.size(); i++) {
			Donation donation = listOfDonationproducts.get(i);
			if (donation != null && donation.getDonationId() != null && donation.getDonationId().equals(donationId)) {
				DonationById = donation;
				break;
			}
		}
		return DonationById;
	}
	
	public void adddonations(Donation donation) {
		listOfDonationproducts.add(donation);
	}
}

