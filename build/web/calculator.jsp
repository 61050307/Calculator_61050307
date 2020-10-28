<%-- 
    Document   : calculator
    Created on : Oct 28, 2020, 3:50:47 PM
    Author     : siraphat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator</title>
    </head>
    <body>
        <%
            double add = (Double) request.getAttribute("add");
            double sub = (Double) request.getAttribute("sub");
            double mul = (Double) request.getAttribute("mul");
            double div = (Double) request.getAttribute("div");
            String num1 = request.getParameter("num1");
            String num2 = request.getParameter("num2");
            if (request.getParameter("add") != null) {
                out.print("The result of " + num1 + "+" + num2 + " is: " + add);
            } else if (request.getParameter("sub") != null) {
                out.print("The result of " + num1 + "-" + num2 + " is: " + sub);
            } else if (request.getParameter("mul") != null) {
                out.print("The result of " + num1 + "*" + num2 + " is: " + mul);
            } else if (request.getParameter("div") != null) {
                if (num2.equals("0")) {
                    out.print("The result of " + num1 + "/" + num2 + " is: Error divide by 0");
                } else {
                    out.print("The result of " + num1 + "/" + num2 + " is: " + div);
                }
            }

        %>
    </body>
</html>


