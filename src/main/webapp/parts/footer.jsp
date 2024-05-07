<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<jsp:useBean id="timeProviderService" class="com.example.struts2.service.TimeProviderService" scope="session"/>
<p>Current Server time: <%=timeProviderService.getCurrentTime()%></p>