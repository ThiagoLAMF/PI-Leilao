<%-- 
    Document   : consulta
    Created on : 03-Dec-2017, 21:24:02
    Author     : User
--%>

<%@page import="Leilao.Leilao"%>
<%@page import="java.util.ArrayList"%>

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
        <title>Leilões</title>
        <link href="style.css" rel="stylesheet" type="text/css">    
    </head>
    
    <body>
        <table class="tableForum">
            <tr>
                <td>ID</td>
                <td>DESC</td>
                <td>LANCE MIN</td>
                <td>VALOR LANCE</td>
                <td>ENCERRADO</td>
                <td>LANCES</td>
                <td></td>
                <c:if test = "${usuario.admin == true}">
                    <td></td>
                </c:if>
            </tr>
             <c:forEach items="${leiloes}" var="item">
                 <tr>
                     <td>${item.id}</td>
                     <td>${item.descricao}</td>
                     <td>${item.lanceMinino}</td>
                     <td>${item.valorLance}</td>
                     <td>${item.fgEncerrado == true?'SIM':'NÃO'}</td>
                     <td>
                         <form name="lances" action="fc" method="POST">
                            <input type="hidden" name="cmd" value="listarLance" />
                            <input type="hidden" name="idleilao" value="${item.id}" />
                            <input type="submit" value="LANCES" class="button2">
                        </form>
                     </td>
                     <td>
                         <c:if test = "${item.fgEncerrado != true}">
                            <form name="lances" action="fc" method="POST">
                            <input type="hidden" name="cmd" value="darLance" />
                            <input type="hidden" name="idleilao" value="${item.id}" />
                            <input type="hidden" name="valorlance" value="${item.valorLance}" />
                            <input type="hidden" name="lanceMinimo" value="${item.lanceMinino}" />
                            <input type="submit" value="DAR LANCE" class="button2">
                            </form>
                        </c:if>
                     </td>
                     <c:if test = "${usuario.admin == true}">
                        <td>
                        <c:if test = "${item.fgEncerrado != true}">
                                <form name="menu" action="fc" method="POST">
                                    <input type="hidden" name="cmd" value="encerrar" />
                                    <input type="hidden" name="idleilao" value="${item.id}" />
                                    <input type="submit" value="ENCERRAR"  class="button2">
                                </form>   
                        </c:if>
                        </td>
                    </c:if>
                 </tr>
                
            </c:forEach>
        </table>
        </br>
        <center>
            <form name="menu" action="menu.jsp" method="POST">
                <input type="submit" value="VOLTAR" class="button2">
            </form>
        </center>    
    </body>
</html>
