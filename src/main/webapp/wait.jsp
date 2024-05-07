<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<jsp:include page="parts/header.jsp">
    <jsp:param name="isAutoRefresh" value="true"/>
</jsp:include>
<body>
<h2>Processing</h2>
Stage #<s:property value="currentProcessingStage"/> is in progress. Please wait...
<jsp:include page="parts/footer.jsp"/>
</body>