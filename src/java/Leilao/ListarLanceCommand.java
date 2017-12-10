/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Leilao;

import Controller.Command;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
public class ListarLanceCommand implements Command {

    @Override
    public String execute(HttpServletRequest rq, HttpServletResponse rs) throws ServletException {
        int idleilao = Integer.parseInt(rq.getParameter("idleilao"));
        
        LeilaoController lc = new LeilaoController();
        
        ArrayList<Lance> lances = lc.getLance(idleilao);
        
        rq.setAttribute("lances", lances);
        
        return "consultalances.jsp";
    }
    
}
