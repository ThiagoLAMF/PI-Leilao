<%-- 
    Document   : cadastroleilao
    Created on : 03-Dec-2017, 23:03:31
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Leilao</title>
        <link href="style.css" rel="stylesheet" type="text/css">  
    </head>
    <body>
        <div class="center">
        <h1>Cadastro de Leilão</h1>
        <form name="login" action="fc" method="POST">
            <input type="hidden" name="cmd" value="cadastrarLeilao" />
            <table class="center">
                <tr>
                    <td>Descrição:</td>
                    <td><input type="text" name="descricao"></td>
                </tr>
                <tr>
                    <td>Valor Lance:</td>
                    <td><input type="text" name="lanceminimo"></td>
                </tr>
                <tr>
                    <td>Valor Inicial:</td>
                    <td><input type="text" name="valorlance"></td>
                </tr>

            </table>
            <input type="submit" value ="CADASTRAR" class="button2">
        </form>
        </br>
        <form name="menu" action="menu.jsp" method="POST">
            <input type="submit" value="VOLTAR" class="button2">
        </form>
        </div>
    </body>
</html>
