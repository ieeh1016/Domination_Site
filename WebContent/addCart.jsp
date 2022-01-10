<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Donation"%>
<%@ page import="dao.DonationRepository"%>

<%
	String id = request.getParameter("id");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("products.jsp");
		return;
	}

	DonationRepository dao = DonationRepository.getInstance();

	Donation donation = dao.getDonationById(id);
	if (donation == null) {
		response.sendRedirect("exceptionNoProductId.jsp");
	}

	ArrayList<Donation> goodsList = dao.getAllDonationproducts();
	Donation goods = new Donation();
	for (int i = 0; i < goodsList.size(); i++) {
		goods = goodsList.get(i);
		if (goods.getDonationId().equals(id)) { 			
			break;
		}
	}
	
	ArrayList<Donation> list = (ArrayList<Donation>) session.getAttribute("cartlist");
	if (list == null) { 
		list = new ArrayList<Donation>();
		session.setAttribute("cartlist", list);
	}

	int cnt = 0;
	Donation goodsQnt = new Donation();
	for (int i = 0; i < list.size(); i++) {
		goodsQnt = list.get(i);
		if (goodsQnt.getDonationId().equals(id)) {
			cnt++;
			int orderQuantity = goodsQnt.getQuantity() + 1;
			goodsQnt.setQuantity(orderQuantity);
		}
	}

	if (cnt == 0) { 
		goods.setQuantity(1);
		list.add(goods);
	}

	response.sendRedirect("donation.jsp?id=" + id);
%>