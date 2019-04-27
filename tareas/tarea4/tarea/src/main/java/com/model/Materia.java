package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "Materia")
public class Materia {
    @Id@GeneratedValue(strategy =GenerationType.IDENTITY ) 
    @Column(name="idMateria")
     private int idMateria;
    @Column(name="nombre")
    private String nombre;
    @Column(name="profesor")
    private String profesor;
    @Column(name="ayudante")
    private String ayudante;
    @Column(name="salon")
    private String salon;
	public int getIdMateria() {
		return idMateria;
	}
	public void setIdMateria(int idMateria) {
		this.idMateria = idMateria;
	}
	public String getProfesor() {
		return profesor;
	}
	public void setProfesor(String profesor) {
		this.profesor = profesor;
	}
	public String getAyudante() {
		return ayudante;
	}
	public void setAyudante(String ayudante) {
		this.ayudante = ayudante;
	}
	public String getSalon() {
		return salon;
	}
	public void setSalon(String salon) {
		this.salon = salon;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
    
    
    
}
