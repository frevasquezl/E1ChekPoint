<%-- 
    Document   : index
    Created on : 13-08-2017, 18:08:59
    Author     : Freddy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            float peso = 60;
            float estaturaCM = 158;
            float imc = peso/(float)Math.pow((estaturaCM), 2);
            String condicion = "";
            if(imc<25)
            {
                condicion = "Delgadez";
            }
            else if (imc>=25 && imc<30)
            {
                condicion = "peso Normal";
            }
            else
            {
                condicion = "Obesidad";
            }
        %>
        <h1>Si usted pesa: <%=peso%> kilos y mide <%=estaturaCM%> centímetros.</h1>
        <br>
        <h1>Entonces su IMC es de: <%=imc%>.</h1>
        <br>
        <h1>Lo cual significa que su condición es: <%=condicion%></h1>
    </body>
</html>
