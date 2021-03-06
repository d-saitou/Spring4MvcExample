<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/contents.css" media="all" />
	<%-- Get date format from message source --%>
	<spring:message code="contents.format.date" var="dateFormat" />
</head>
<body>
<div id="wrapper">
	
	<%-- Title --%>
	<div id="header">
		<h1><spring:message code="JsonRequest.text.title" /></h1>
	</div>
	
	<%-- Display data --%>
	<table class="table-style">
	<thead>
		<tr>
			<th><spring:message code="DbSelectAll.th.id" /></th>
			<th><spring:message code="DbSelectAll.th.title" /></th>
			<th><spring:message code="DbSelectAll.th.scheduledate" /></th>
			<th><spring:message code="DbSelectAll.th.status" /></th>
			<th><spring:message code="DbSelectAll.th.description" /></th>
			<th><spring:message code="DbSelectAll.th.userid" /></th>
		</tr>
	</thead>
	<c:if test="${not empty tasklist}">
	<tbody>
		<c:forEach items="${tasklist}" var="task">
		<tr>
			<td class="select-column1"><c:out value="${task.id}" /></td>
			<td class="select-column2"><c:out value="${task.title}" /></td>
			<td class="select-column3">
				<fmt:formatDate value="${task.scheduledate}" pattern="${dateFormat}" />
			</td>
			<td class="select-column4">
				<c:if test="${task.status}"><spring:message code="DbSelectAll.text.status" /></c:if>
			</td>
			<td class="select-column5"><c:out value="${task.description}" /></td>
			<td class="select-column6"><c:out value="${task.userid}" /></td>
		</tr>
		</c:forEach>
	</tbody>
	</c:if>
	</table>
	
</div>
</body>
</html>
