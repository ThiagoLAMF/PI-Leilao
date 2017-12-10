<%-- 
    Document   : consultalances
    Created on : 04-Dec-2017, 13:31:36
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<style>
    .tableForum {
        border-collapse: collapse;
        width: 100%;
        text-align: center;
    }th, td {
        border-bottom: 1px solid #ddd;padding: 15px;
    }
</style>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lances</title>
        <link href="style.css" rel="stylesheet" type="text/css">    
    </head>
    <body>
        <table class="tableForum">
            <tr>
                <th>ID</th>
                <th>VALOR</th>
                <th>USUARIO</th>
            </tr>
             <c:forEach items="${lances}" var="item">
                 <tr>
                     <td>${item.id}</td>
                     <td>${item.precolance}</td>
                     <td>${item.usuarioNome}</td>
                 </tr>
                
            </c:forEach>
        </table>
        </br>
    <center>
        <form name="menu" action="fc" method="POST">
            <input type="hidden" name="cmd" value="listar" />
            <input type="submit" value="VOLTAR" class="button2">
        </form>
    </center>
           
    </body>
</html>