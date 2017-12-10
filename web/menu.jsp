<%-- 
    Document   : menu
    Created on : 27-Nov-2017, 13:39:50
    Author     : User
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            p{
                font-family: "Verdana"
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style.css" rel="stylesheet" type="text/css">
        <title>Menu</title>
    </head>
    <body>
    <div class="center">
        <h1>MENU</h1>
        <form name="menu" action="fc" method="POST">
            <input type="hidden" name="cmd" value="listar" />
            <input type="submit" value="CONSULTAR LEILÕES"  class="button2" style="width: 200px">
        </form>
        </br>
        <c:if test = "${usuario.admin == true}">
            <form name="menu" action="cadastroleilao.jsp" method="POST">
                <input type="submit" value="CADASTRAR LEILAO"  class="button2" style="width: 200px">
            </form>
            </br>
        </c:if>
        
        <form name="menu" action="fc" method="POST">
            <input type="hidden" name="cmd" value="efetuarLogout" />
            <input type="submit" value="LOGOUT"  class="button2" style="width: 200px">
        </form>
    </div>
    </body>
</html>
