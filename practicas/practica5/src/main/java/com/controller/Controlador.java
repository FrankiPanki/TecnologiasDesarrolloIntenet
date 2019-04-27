package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.UsuarioDAO;
import com.model.Usuario;


@Controller
public class Controlador {
	
	@Autowired
	UsuarioDAO _usuario;
	
	
	@GetMapping("/formulario")
	public String Formulario() {
		return "inicio";
	}
	
	
	@GetMapping("/agrega")
	public String inicio(
			@RequestParam(name = "email")String email, @RequestParam(name = "contrasena")String contrasena
			) 
	{
		
		Usuario nuevo=new Usuario();
		nuevo.setEmail(email);
		nuevo.setContrasena(contrasena);
		_usuario.guardar(nuevo);
		return "inicio";
	}
}
