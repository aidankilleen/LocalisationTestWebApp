<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ page import="ie.rccourse.*, java.util.*" %>

<%
	String lang = request.getParameter("lang");
	if (lang==null) {
		lang="en";
	}
	String country = request.getParameter("country");
	Locale locale;
	if (country != null) {
		locale = new Locale(lang, country);
	} else {
		locale = new Locale(lang);
	}

	LocalMessages lm = new LocalMessages(locale);
	String username = "Aidan";
%>
<html>
<body>
<div>

<h1>This is a cat</h1>
<img src="static/images/cat.jpg" title="picture of a cat" alt="a picture of a cat" width="100"/>

	<ul>
		<li><a href="index.jsp?lang=en&country=GB">English</a></li>
		<li><a href="index.jsp?lang=fr">French</a></li>
		<li><a href="index.jsp?lang=de">German</a></li>
		<li><a href="index.jsp?lang=en&country=US">American</a></li>
		<li><a href="index.jsp?lang=ga">Irish</a></li>
	
	</ul>

</div>


<h2><%=String.format(lm.getMessage("greeting"), username) %></h2>

<%=lm.getMessage("prompt") %>
</body>
</html>
