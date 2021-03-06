<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page session="false"%>

<ul class="breadcrumb">
	<li><a href="#">입/출금 관리</a></li>
	<li>출금 관리</li>
	<li>출금 관리 목록</li>
</ul>
<h3 class="text-primary">
	<b>출금 관리 목록</b>
</h3>
<div class="row">
	<div class="col-md-12">
		<table class="table">
			<thead>
				<tr>
					<th><input type="checkbox" name="chk_info" value="1"></th>
					<th>이름</th>
					<th>내역</th>
					<th>금액</th>
					<th>입금계좌</th>
					<th>날짜</th>
					<th>영수증</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${empty withdrawMannageList}">
						<ul class="list-group text-muted">
							<tr>
			                  <td colspan=7>출금 관리 목록이 없습니다.</td>
			                </tr>
						</ul>
					</c:when>
					<c:otherwise>
						<c:forEach var="withdraw" items="${withdrawMannageList}">
			                <tr>
			                	<td><input type="checkbox" name="chk_info" value="1">
								<td>${withdraw.user_name}</td>
								<td>${withdraw.content}</td>
								<td>${withdraw.price}</td>
								<td>${withdraw.deposit_account}</td>
								<td>${withdraw.apply_date}</td>
								<td>${withdraw.receipt_id}</td>
			                </tr>
		                </c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>
</div>
<div class="text-right">
	<a href="#" class="btn btn-primary">승인</a> <a href="#"
		class="btn btn-primary">반려</a>
</div>

<div class="row">
	<div class="col-md-12 text-center">
		<c:set var='PAGEBLOCK' value="10" />
		<fmt:parseNumber var="startPage"  value="${((currentPage - 1) / PAGEBLOCK)}" integerOnly="true" />
		<c:set var="startPage" value="${startPage - (startPage % 1) }" /> <!--  floor -->
		<c:set var="startPage" value="${startPage * PAGEBLOCK + 1 }" />
		<fmt:parseNumber var="totalPage"  value="${( withdrawMannageListCount / PAGEBLOCK)}" integerOnly="true" />
		
		<c:if test="${startPage < 0}">
             <c:set var="startPage" value="1" />
		</c:if>
		<c:if test="${withdrawMannageListCount % PAGEBLOCK != 0}">
             <c:set var="totalPage" value="${totalPage + 1}" />
		</c:if>
		
		<c:set var="endPage" value="${startPage - 1 + PAGEBLOCK }" />
		<c:if test="${endPage > totalPage}">
			<c:set var="endPage" value="${totalPage }" />
		</c:if>

		<ul class="pagination">
			<c:choose>
				<c:when test="${startPage != 1}">
					<li><a href="withdrawMannageList.do?pageNum=${startPage-1}">Pre</a></li>
				</c:when>
			</c:choose>
			<c:forEach var="counter" begin="${startPage}" end="${endPage}">
				<c:choose>
					<c:when test="${currentPage eq counter}">
						<li class="active"><a href="withdrawMannageList.do?pageNum=${counter}"><c:out
									value="${counter}" /></a></li>
					</c:when>
					<c:otherwise>
						<li><a href="withdrawMannageList.do?pageNum=${counter}"><c:out
									value="${counter}" /></a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:choose>
				<c:when test="${totalPage != endPage || totalPage > endPage }">
					<li><a href="withdrawMannageList.do?pageNum=${endPage+1}">Next</a></li>
				</c:when>
			</c:choose>
		</ul>
	</div>
</div>
