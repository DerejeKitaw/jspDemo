<html>
	<body>
		<h3>Declaration of method inside JSP</h3>
		<div> 
		<%!
		String makeItLower(String data){
			return data.toLowerCase();
		}
		%>
		Converting a string to lowercase: 
		<%= makeItLower("HELLO WORLD!") %>
		</div>
	</body>
</html>