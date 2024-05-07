<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<jsp:include page="parts/header.jsp"/>
<body>
<jsp:include page="parts/navbar.jsp"/>
Available Functions:
<ul>
    <li><a href="uploadFile.action">Upload File</a></li>
    <li><a href="listFiles.action">List Files</a></li>
</ul>
<jsp:include page="parts/footer.jsp"/>
</body>