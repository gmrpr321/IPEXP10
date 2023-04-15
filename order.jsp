<!-- order.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %> <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="java.util.*" %> <% List<Order>
  ordersList = new ArrayList<Order
    >(); ordersList.add(new Order(1, "Pradeep", new Date())); ordersList.add(new
    Order(2, "HariShankar", new Date())); ordersList.add(new Order(3, "Jash",
    new Date())); Collections.sort(ordersList, new OrderComparator());%>

    <html>
      <head>
        <title>Order List</title>
      </head>
      <body>
        <table>
          <thead>
            <tr>
              <th>Order ID</th>
              <th>Customer Name</th>
              <th>Order Date</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach items="${ordersList}" var="order">
              <c:set var="formattedDate">
                <fmt:formatDate
                  value="${order.orderDate}"
                  pattern="yyyy-MM-dd"
                />
              </c:set>
              <tr>
                <td>${order.orderId}</td>
                <td>${order.customerName}</td>
                <td>${formattedDate}</td>
              </tr>
            </c:forEach>
          </tbody>
        </table>
      </body>
    </html>
  </Order></Order
>
