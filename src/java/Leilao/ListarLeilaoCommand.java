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
public class ListarLeilaoCommand implements Command{

    @Override
    public String execute(HttpServletRequest rq, HttpServletResponse rs) throws ServletException {
        
        LeilaoController lc = new LeilaoController();
        
        rq.setAttribute("leiloes", lc.getLeilao());
        
        return "consulta.jsp";
    }
    
}
