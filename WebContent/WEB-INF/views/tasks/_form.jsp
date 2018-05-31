<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${errors != null}">
    <div id="flush_error">
        入力内容にエラーがあります。<br />
        <c:forEach var="error" items="${errors}">
            ・<c:out value="${error}" /><br />
        </c:forEach>
    </div>
</c:if>

<label for="title">タイトル</label>
<br />
<input type="text" name="title" value="${tasks.title}" />
<br />
<br />

<label for="content">タスク</label>
<br />
<input type="text" name="content" value="${tasks.content}" />
<br />
<br />

<label for="content">期限</label>
<br />
<input type="date" name="deadline" value="${tasks.deadline}" />
<br />
<br />

<label for="content">状況</label>
<br />
<input type="text" name="status" value="${tasks.status}" />
<br />
<br />

<input type="hidden" name="_token" value="${_token}" />
<button type="submit">作成</button>