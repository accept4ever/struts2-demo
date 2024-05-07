<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<jsp:include page="parts/header.jsp"/>
<body>
<jsp:include page="parts/navbar.jsp"/>
<div class="container-fluid">
    <p>Hello, <s:property value="#session.username"/></p>
    <h2>Uploaded Files:</h2>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>#</th>
            <th>Name</th>
            <th>Size</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${files}" var="f" varStatus="i">
            <tr>
                <td>${i.index + 1}</td>
                <td>${f.name}</td>
                <td>${f.length()}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
<jsp:include page="parts/footer.jsp"/>