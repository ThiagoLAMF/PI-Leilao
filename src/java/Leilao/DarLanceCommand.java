/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Leilao;

import Controller.Command;
import Usuario.Usuario;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
public class DarLanceCommand implements Command{

    @Override
    public String execute(HttpServletRequest rq, HttpServletResponse rs) throws ServletException {
        int idleilao = Integer.parseInt(rq.getParameter("idleilao"));
        float valorlance = Float.parseFloat(rq.getParameter("valorlance"));
        float lanceMinimo = Float.parseFloat(rq.getParameter("lanceMinimo"));
        Usuario u = (Usuario) rq.getSession().getAttribute("usuario");
        
        Lance lance = new Lance();
        Leilao l = new Leilao();
        l.setId(idleilao);
        
        lance.setLeilao(l);
        lance.setUsuario(u);
        lance.setPrecolance(lanceMinimo);
        
        LeilaoController lc = new LeilaoController();
        
        lc.adicionaLance(lance);
        
        ListarLeilaoCommand llc = new ListarLeilaoCommand();
        
        return llc.execute(rq, rs);
    }
    
}
