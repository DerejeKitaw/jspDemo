<!DOCTYPE html>
<html lang="en">
<head>
  <title>Confirmation</title>
</head>
<%
// read form data
String favLang = request.getParameter("favoriteLanguage");
// create the cookie
Cookie theCookie = new Cookie("myApp.favoriteLanguage", favLang);
// set the life  spann -- total number of seconds 
theCookie.setMaxAge(60*60*24*365);
// send cookie to browser
response.addCookie(theCookie);
%>
<body>
<div>Thanks! we set your favorite language to : ${param.favoriteLanguage}</div>
<a href="12_cookies-homepage.jsp">Return to homepage</a>
</body>
</html>