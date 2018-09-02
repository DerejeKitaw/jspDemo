<!DOCTYPE html>
<html lang="en">
<head>
  <title>Student Confirmation Title</title>
</head>
<body>
  <div>
  Student  ${param.firstName} ${param.lastName} is confirmed.
  </div>
  <div>${param.country} is registered as country</div>
  <div>${param.firstName} ${param.lastName} favorite language is ${param.favoriteLanguage}</div>
  <div>${param.firstName} ${param.lastName} love to:
  <ul>
  <%
    String[] hobbiesList = request.getParameterValues("hobbies");
    for (String tempHobbies : hobbiesList){
      out.println("<li>" + tempHobbies + "</li>");
    }
   %>
 
   </ul>
  </div>
</body>
</html>