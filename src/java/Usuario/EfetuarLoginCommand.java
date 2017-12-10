/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Usuario;

import Controller.Command;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
public class EfetuarLoginCommand implements Command{
    @Override
    public String execute(HttpServletRequest rq, HttpServletResponse rs) throws ServletException {
        String login = (String) rq.getParameter("usuario");
        String senha = (String) rq.getParameter("senha");
        
        String erro;
        if(login == null || senha == null)
        {
            erro = "Parametros inválidos.";
            rq.setAttribute("erro", erro);
            return "index.jsp";
        }
        
        UsuarioController uc = new UsuarioController();
        Usuario u = uc.efetuaLogin(login, senha);
        
        if(u == null)
        {
            erro = "Usuario ou senha inválidos.";
            rq.setAttribute("erro", erro);
            return "index.jsp";
        }
        
        rq.getSession().setAttribute("usuario", u);
        //if(u == null) return null;
        return "menu.jsp";
        
    }
}
