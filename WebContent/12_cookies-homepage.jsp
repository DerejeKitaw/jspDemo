<!DOCTYPE html>
<html lang="en">
<head>
  <title>Training</title>
</head>
<body>
<h3>Training Portal</h3>
<%
// the default ... if there is no cookies
String favLang = "Java";
// get the cookies from the browser request
Cookie[] theCookies = request.getCookies();
// find our favorite language cookie
if (theCookies != null){
  for (Cookie tempCookie : theCookies){
    if ("myApp.favoriteLanguage".equals(tempCookie.getName())){
      favLang = tempCookie.getValue();
      break;
    }
  }
}
%>
<%-- now show a personalized page ... use the "favlang" variable --%>
<%-- Show new books for this lang --%>
<h4>New Books for <%= favLang %></h4>
<ul>
  <li>Bible</li>
  <li>Love of heart</li>
</ul>
<hr>
<a href="12_cookies-personalize-form.jsp"> Personalize this page</a>
</body>
</html>