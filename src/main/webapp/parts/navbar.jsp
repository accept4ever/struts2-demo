<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="./../">Struts 2 Demo</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="./../">Home</a></li>
            <li><a href="uploadFileWithDefaultWaitPage.action">Upload File (default wait page)</a></li>
            <li><a href="uploadFileWithCustomWaitPage.action">Upload File (custom wait page)</a></li>
            <li><a href="uploadFileWithOverlay.action">Upload File (overlay)</a></li>
            <li><a href="listFiles.action">List Files</a></li>
        </ul>
    </div>
</nav>