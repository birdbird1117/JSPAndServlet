<html>

<head><title>Confirmation</title></head>

<%

	//read from data
	String favLang = request.getParameter("favoriteLanguage");

	//create the cookie
	Cookie theCookie = new Cookie("myApp.favoriteLanguage", favLang);
	
	// send cookie to browser
	response.addCookie(theCookie);


%>

<body>

	Thanks, we set your favorite language to : ${param.favoriteLanguage};
	<br/>
	<br/>
	<a href="cookies-homepage.jsp">Return to homepage.</a>
	



</body>

</html>