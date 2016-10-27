<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%@ page import="ie.rccourse.*, java.util.*" %>
<h1>${lm.getMessage("heading")}</h1>

<% LocalMessages lm = (LocalMessages) 
	request.getAttribute("lm"); %>

${prompt}

${lm.getMessage("depart")}

