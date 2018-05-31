<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../layout/app.jsp">
	<c:param name="content">

		<c:if test="${flush != null}">
			<div id="flush_success">
				<c:out value="${flush}"></c:out>
			</div>
		</c:if>

		<h2>タスク一覧</h2>
		<ul>
			<c:forEach var="tasks" items="${tasks}">
				<li><a
					href="${pageContext.request.contextPath}/show?id=${tasks.id}">
						<c:out value="詳細ページへ" />
				    </a> ：
				    <b>&#12304;
				        <c:out value="${tasks.title}"></c:out> &#12305;
				    </b>
				        <c:out value="${tasks.content}" />
				        <font color="#ff1493">（期限：<c:out value="${tasks.deadline}" />まで）</font>
				        <font size="-1">状況：<c:out value="${tasks.status}" /></font>
				</li>
			</c:forEach>
		</ul>

		<div id="pagination">
			（全 ${tasks_count} 件）<br />
			<c:forEach var="i" begin="1" end="${((tasks_count - 1) / 15) + 1}"
				step="1">
				<c:choose>
					<c:when test="${i == page}">
						<c:out value="${i}" />&nbsp;
                    </c:when>
					<c:otherwise>
						<a href="${pageContext.request.contextPath}/index?page=${i}"><c:out
								value="${i}" /></a>&nbsp;
                    </c:otherwise>
				</c:choose>
			</c:forEach>
		</div>

		<p>
			<a href="${pageContext.request.contextPath}/new">新規タスクの作成</a>
		</p>

	</c:param>
</c:import>