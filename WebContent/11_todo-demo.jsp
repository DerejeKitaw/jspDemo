<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Student registration form</title>
</head>

<body>
<%-- Step1: Create HTML form --%>
  <form action="11_todo-demo.jsp">
    <div>Add new item: <input type="text" name="theItem" /></div>
    
    <div><input type="submit" name="Submit" /></div>
  </form>
  Item entered: <%= request.getParameter("theItem") %>
  <%-- Step1: Create HTML form --%>
<%  
  // get the TODO items from the session 
  List<String> items = (List<String>) session.getAttribute("myToDoList");
  // if the TODO items doesn't exist, then create a new one 
  if (items == null){
    items = new ArrayList<String>();
    session.setAttribute("myToDoList", items);
  }
  // See if there is form data to add 
  String theItem = request.getParameter("theItem");
  if (theItem != null){
    items.add(theItem);
  }
// Step3: Display all " TODO" item from session 
%>
<hr>
<ol>
<% 
for (String item : items){
  out.println("<li>" + item + "</li>");
}
%>
</ol>

</body>

</html>