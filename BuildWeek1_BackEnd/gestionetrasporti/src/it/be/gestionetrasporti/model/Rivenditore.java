package it.be.gestionetrasporti.model;

import javax.persistence.Entity;

@Entity
public class Rivenditore extends PuntoVendita {
	
	private String nome;

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

}
