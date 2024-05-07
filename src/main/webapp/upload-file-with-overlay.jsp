<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<s:if test="!showOverlay">
    <jsp:include page="parts/header.jsp"/>
</s:if>
<s:if test="showOverlay">
    <jsp:include page="parts/header.jsp">
        <jsp:param name="isAutoRefresh" value="true"/>
    </jsp:include>
    <div class="overlay">
        <div class="overlay-content">
            <div class="overlay-header">
                <h2>Processing</h2>
            </div>
            <div class="overlay-body">
                <p>Stage #<s:property value="currentProcessingStage"/> is in progress. Please wait...</p>
            </div>
        </div>
    </div>
</s:if>
<body>
<jsp:include page="parts/navbar.jsp"/>
<h2>Upload File</h2>
<p>Hello, <s:property value="#session.username"/></p>
<s:form action="uploadFileWithOverlay" method="post" enctype="multipart/form-data">
    <s:file name="upload" label="File"/>
    <s:submit value="Upload"/>
</s:form>
<jsp:include page="parts/footer.jsp"/>
</body>