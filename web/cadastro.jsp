<%-- 
    Document   : cadastro.jsp
    Created on : 13-Nov-2017, 14:13:46
    Author     : User
--%>

<%@page import="Usuario.UsuarioController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro</title>
        <link href="style.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="center">
        <h1>Cadastro de Usuário</h1>
        <form name="login" action="fc" method="POST">
            <input type="hidden" name="cmd" value="cadastrarUsuario" />
            <table class="center">
                <tr>
                    <td>Nome:</td>
                    <td><input type="text" name="nome"></td>
                </tr>
                <tr>
                    <td>Login:</td>
                    <td><input type="text" name="usuario"></td>
                </tr>
                <tr>
                    <td>Senha:</td>
                    <td><input type="password" name="senha"></td>
                </tr>
            </table>
            <input type="submit" value ="CADASTRAR" class="button2">
        </form>
            </br>
        <form name="voltar" action="index.jsp" method="POST">
            <input type="submit" value ="VOLTAR" class="button2">
        </form>
        </div>
    </body>
</html>
