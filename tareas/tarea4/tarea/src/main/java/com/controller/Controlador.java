package com.controller;

import javax.enterprise.inject.New;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dao.MateriaDAO;
import com.model.Materia;


@Controller
public class Controlador {
	
	@Autowired
	MateriaDAO _materia;
	
	
	@GetMapping("/formulario")
	public ModelAndView Formulario() {
		ModelAndView model=new ModelAndView("agregaMateria");
		model.addObject("materia", new Materia());
		return model;
	}
	
	
	@PostMapping("/agrega")
	public ModelAndView inicio(@ModelAttribute(name = "materia") Materia nueva) {
		_materia.guardar(nueva);
		ModelAndView model =new ModelAndView("vermaterias");
		model.addObject("materias", _materia.getMaterias());
		return model;
	}
	
	
	
}
