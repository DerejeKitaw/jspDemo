<html>
	<body>
		<h3>JSP built in Object</h3>
		<div> 
		Request user agent:  
		<%= request.getHeader("User-Agent") %>
		
		<br/><br/>
		Request language: <%= request.getLocale()  %>
		</div>
	</body>
</html>