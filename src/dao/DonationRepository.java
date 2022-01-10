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
		
		Donation donation1=new Donation("D001","�����̸� �����ֽǷ���??",50000);
		donation1.setGoalPrice("10000000");
		donation1.setDonationPlace("���������̺�");
		donation1.setDonationPeriod("2021/11/22 ~ 2021/12/25");
		donation1.setDonationDescription("�����̴� �汤���� ���۵� �Ǽ������� �̰��������� ���̵Ǿ����ϴ�. �´� ���� ���� ���� �׾� ���� �õ��ؾ� �ϴ� �����̴� ���� '������, �� �� �ִ�' ���մϴ�. �̷� �����̿��� �����̳��� ���� �Ǿ� �ֽǷ���? �����̴� ����� ������ �ձ��� ��ٸ����ֽ��ϴ�.");
		donation1.setFilename("D1.png");
	    
	    
		Donation donation2=new Donation("D002","��� �����Ƶ��� �����ּ���!",10000);
		donation2.setGoalPrice("5000000");
		donation2.setDonationPlace("��ܹ��� ��ֿ����� ������");
		donation2.setDonationPeriod("2021/10/10 ~ 2021/12/29");
		donation2.setDonationDescription("������ �Ƿ��� ������ ��������� ���� ġ�Ḧ ���� �� ���� ��־Ƶ��� ������� �����Ʊ⿡ �� �ʿ��� ġ�Ḧ ���� �� �ֵ��� �����ϴ� ��ֿ����� ���� ķ���� ���� �ʰ� �����ּ���. �������� �ձ��� ���̵��� �츱�� �ֽ��ϴ�.");
		donation2.setFilename("D2.png");
	    
		Donation donation3=new Donation("D003","��ȣ������ ������ ���� ����ּ���!",30000);
		donation3.setGoalPrice("3000000");
		donation3.setDonationPlace("��ܹ��� �����Ѱ���ü");
		donation3.setDonationPeriod("2021/8/10 ~ 2021/11/30");
		donation3.setDonationDescription("3�� �� ������ ������ �ϰ� ���� ��ȣ�� 5�� �������� ������ �Ǿ����ϴ�. ��������� ��ġ�� �� ����, ���̸� 15�� ���� ö������ ��ȣ���� ������ ��ġ�Դϴ�. ������ ���ڰ� �� �ڶ��༭ ���ٴ� ��ȣ. ��ȣ�������� ������ ���� ����ּ���.");
		donation3.setFilename("D3.png");
		
		Donation donation4=new Donation("D004","�̾Ḷ �������� ���� ��ۺ� �ʿ��ؿ�",50000);
		donation4.setGoalPrice("10000000");
		donation4.setDonationPlace("��ܹ��� ����������");
		donation4.setDonationPeriod("2021/9/2 ~ 2021/12/27");
		donation4.setDonationDescription("���� ����Ÿ�� �Ͼ �� 7������ �� �Ǿ�� ���� �̾Ḷ�� ����ڵ��� �߻��ϰ� �ְ�, �Ҿ����� �����Դϴ�. �뵿�ڷ�, ���л����� �ѱ����� �ǳʿ� ��Ȱ�ϴ� �̾Ḷ�ε��� ���� �ִ� ���� ������ �Ϸ絵 ������ ���� ���� �����ϴ�.������ ��û�ϴ� �̾Ḷ�� ���� ����ּ���.");
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

