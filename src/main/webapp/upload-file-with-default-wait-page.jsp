<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<jsp:include page="parts/header.jsp"/>
<body>
<jsp:include page="parts/navbar.jsp"/>
<h2>Upload File</h2>
<p>Hello, <s:property value="#session.username"/></p>
<s:form action="uploadFileWithDefaultWaitPage" method="post" enctype="multipart/form-data">
    <s:file name="upload" label="File"/>
    <s:submit value="Upload"/>
</s:form>
<jsp:include page="parts/footer.jsp"/>
</body>