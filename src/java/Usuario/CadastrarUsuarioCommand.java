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
public class CadastrarUsuarioCommand implements Command{

    @Override
    public String execute(HttpServletRequest rq, HttpServletResponse rs) throws ServletException { 
        String login = (String) rq.getParameter("usuario");
        String senha = (String) rq.getParameter("senha");
        String nome = (String) rq.getParameter("nome");
        
        Usuario user = new Usuario();
        
        user.setAdmin(false);
        user.setLogin(login);
        user.setNome(nome);
        user.setSenha(senha);
        
        String erro;
        if(user == null)
        {
            erro = "Parametros inválidos.";
            rq.setAttribute("erro", erro);
        }
        
        UsuarioController uc = new UsuarioController();
        uc.cadastraUsuario(user);
        
        return "index.jsp";
        
    }
    
}
