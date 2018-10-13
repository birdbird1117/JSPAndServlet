<%@ page import="java.util.*" %>

<html>

<body>

	<form action="todo-demo.jsp">
		Add new item: <input type="text" name="theItem"/>
		
		<input type="submit" value="Submit botton" />
	
	
	</form>

<br>
Item entered: <%= request.getParameter("theItem") %>

<%

	List<String> items = (List<String>) session.getAttribute("myToDoList");

	if (items == null) {
		items = new ArrayList<String> ();
		session.setAttribute("myToDoList", items);
	}
	
	String theItem = request.getParameter("theItem");
	if (theItem != null) {
		items.add(theItem);
	}

%>

<hr>
<b> To List items:</b> <br/>

<ol>
<%
	for (String temp: items) {
		out.println("<li>"+temp+"</li>");
	}

%>
</ol>

</body>


</html>