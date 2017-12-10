<%-- 
    Document   : index
    Created on : 10-Dec-2017, 14:08:46
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="center">
        <h1>LOGIN</h1>
        <form name="login" action="fc" method="POST">
            <input type="hidden" name="cmd" value="efetuarLogin" />
            <table class="center">
                <tr>
                    <td>Email:</td>
                    <td><input type="text" name="usuario"></td>
                </tr>
                <tr>
                    <td>Senha:</td>
                    <td><input type="password" name="senha"></td>
                </tr>
            </table>
            <input type="submit" value ="LOGAR" class="button2">
        </form>
        </br>
        <form name="cadastrar" action="cadastro.jsp" method="POST">
            <input type="submit" value="CADASTRAR" class="button2">
        </form>
        <c:if test = "${erro != null}">
            </br>
            <p style = "color:red" >${erro}</p>  
        </c:if>
        </div>
    </body>
</html>
