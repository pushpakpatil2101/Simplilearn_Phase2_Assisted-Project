<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOGIN</title>
</head>
<body>
<h1>hello</h1>
<%

        String name = request.getParameter("name");
        String pwd = request.getParameter("pwd");
        
        if (name == null || name.equals("") || pwd == null || pwd.equals("")) {
                response.sendRedirect("index.jsp?error=1");
        } else {
                
                session.setAttribute("name", name);
                response.sendRedirect("dashboard.jsp");
                
        }
%>

</body>
</html>