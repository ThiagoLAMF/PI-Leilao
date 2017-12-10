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
public class CadastrarLeilaoCommand implements Command{

    @Override
    public String execute(HttpServletRequest rq, HttpServletResponse rs) throws ServletException {
        String descricao = (String) rq.getParameter("descricao");
        float lanceminimo = Float.parseFloat(rq.getParameter("lanceminimo")); 
        float valorlance = Float.parseFloat(rq.getParameter("valorlance")); 
        
        Leilao l = new Leilao();
        l.setFgEncerrado(false);
        l.setDescricao(descricao);
        l.setLanceMinino(lanceminimo);
        l.setValorLance(valorlance);
        
        ArrayList<Lance> lances = new ArrayList<>();
        
        l.setLances(lances);
        
        String erro;
        if(descricao == null)
        {
            erro = "Parametros inválidos.";
            rq.setAttribute("erro", erro);
            //return null;
        }
        
        LeilaoController lc = new LeilaoController();
        lc.cadastrarLeilao(l);

        return "menu.jsp";
    }
    
}
