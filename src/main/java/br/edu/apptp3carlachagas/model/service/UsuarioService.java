package br.edu.apptp3carlachagas.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.apptp3carlachagas.model.negocio.Usuario;
import br.edu.apptp3carlachagas.model.repository.IUsuarioRepository;

@Service	
public class UsuarioService {
	
	@Autowired
	private IUsuarioRepository usuarioRepository;
	
	public void incluir(Usuario usuario) {
		usuarioRepository.save(usuario);
	}

	public List<Usuario> obterLista(){
		return (List<Usuario>)usuarioRepository.findAll();
		
}
	
	public void excluir(Integer id) {
		usuarioRepository.deleteById(id);
	}
}
