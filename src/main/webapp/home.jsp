<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<jsp:include page="parts/header.jsp"/>
<body>
<jsp:include page="parts/navbar.jsp"/>
Available Functions:
<ul>
    <li><a href="uploadFileWithDefaultWaitPage.action">Upload File (default wait page)</a></li>
    <li><a href="uploadFileWithCustomWaitPage.action">Upload File (custom wait page)</a></li>
    <li><a href="uploadFileWithOverlay.action">Upload File (overlay)</a></li>
    <li><a href="listFiles.action">List Files</a></li>
</ul>
<jsp:include page="parts/footer.jsp"/>
</body>