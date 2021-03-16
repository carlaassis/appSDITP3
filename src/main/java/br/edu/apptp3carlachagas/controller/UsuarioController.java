package br.edu.apptp3carlachagas.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import br.edu.apptp3carlachagas.model.negocio.Usuario;
import br.edu.apptp3carlachagas.model.service.UsuarioService;

@Controller
public class UsuarioController {
	
	@Autowired
	private UsuarioService usuarioService;
	
	
	@GetMapping(value ="/")
	public String apresentar(Model model) {
	
		model.addAttribute("nome", "Carla Assis");
		model.addAttribute("email", "carla.chagas@al.infnet.edu.br");
		model.addAttribute("git", "https://github.com/carlaassis/appsdijavaweb");
		return "index";
	}

	@GetMapping(value = "/usuario")
	public String cadastrar(Model model) {
		
		model.addAttribute("usuarios", usuarioService.obterLista()); 
		
		return "usuario/detalhe";

	}

	@PostMapping(value = "/usuario/incluir")
	public String incluir(Usuario usuario) {
		
		usuarioService.incluir(usuario);
		
		return "redirect:/usuario";
		
		
	}
	@GetMapping(value = "/usuario/{id}/excluir")
	public String excluir(@PathVariable Integer id) {
		
		
		usuarioService.excluir(id);
		
		return "redirect:/usuario";
	}
}

	