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

	ArrayList<Donation> cartList = (ArrayList<Donation>) session.getAttribute("cartlist");
	Donation goodsQnt = new Donation();
	for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기
		goodsQnt = cartList.get(i);
		if (goodsQnt.getDonationId().equals(id)) {
			cartList.remove(goodsQnt);
		}
	}

	response.sendRedirect("cart.jsp");
%>
