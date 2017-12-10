/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Leilao.*;
import Usuario.*;
import java.util.HashMap;

/**
 *
 * @author User
 */
public class CommandFactory {

    
    private HashMap< String, Command> comandos;

    public CommandFactory() {
        
        // recuperar esses dados de um arquivo 
        //  properties ou XML
        this.comandos = new HashMap<>() ;
        comandos.put("efetuarLogin", new EfetuarLoginCommand() );
        comandos.put("encerrar", new EncerrarLeilaoCommand());
        comandos.put("listar", new ListarLeilaoCommand());
        comandos.put("cadastrarUsuario", new CadastrarUsuarioCommand());
        comandos.put("cadastrarLeilao", new CadastrarLeilaoCommand());
        comandos.put("darLance", new DarLanceCommand());
        comandos.put("listarLance", new ListarLanceCommand());
        comandos.put("efetuarLogout", new EfetuarLogoutCommand());
    }

    public Command getCommand(String op) {
       return comandos.get(op);
    }

}
