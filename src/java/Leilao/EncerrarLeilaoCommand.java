/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Leilao;

import Controller.Command;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
public class EncerrarLeilaoCommand implements Command{

    @Override
    public String execute(HttpServletRequest rq, HttpServletResponse rs) throws ServletException {
        int idleilao = Integer.parseInt(rq.getParameter("idleilao"));
        
        LeilaoController lc = new LeilaoController();
        
        lc.encerrarLeilao(idleilao);
        
        rq.setAttribute("leiloes", lc.getLeilao());
        
        return "consulta.jsp";
    }

}
