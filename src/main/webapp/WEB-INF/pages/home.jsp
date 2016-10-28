<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ie.rccourse.*, java.util.*" %>
<h1>${lm.getMessage("heading")}</h1>

<% LocalMessages lm = (LocalMessages) 
	request.getAttribute("lm"); %>

${prompt}

${lm.getMessage("depart")}


<img src="/static/images/cat.jpg" alt="a picture of a cat"/>
