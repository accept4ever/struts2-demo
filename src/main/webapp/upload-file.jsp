<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<jsp:include page="parts/header.jsp"/>
<body>
<jsp:include page="parts/navbar.jsp"/>
<h2>Upload File</h2>
<p>Hello, <s:property value="#session.username"/></p>
<script type="text/javascript">
    function submitUploadFile() {
        $('#frmUploadFile').submit();
        $('#btnUpload').prop('disabled',true);
        document.body.innerHTML +=
        '<div class=overlay>' +
        '   <div class=overlay-content>' +
        '        <div class=overlay-header>' +
        '            <h2>Processing</h2>' +
        '        </div>' +
        '        <div class=overlay-body>' +
        '            <p>File processing is in progress. Please wait...</p>' +
        '        </div>' +
        '    </div>' +
        '</div>';
    }
</script>
<s:form id="frmUploadFile" action="uploadFile" method="post" enctype="multipart/form-data">
    <s:file name="upload" label="File"/>
    <s:submit id="btnUpload" value="Upload" onClick="submitUploadFile();"/>
</s:form>
<jsp:include page="parts/footer.jsp"/>
</body>