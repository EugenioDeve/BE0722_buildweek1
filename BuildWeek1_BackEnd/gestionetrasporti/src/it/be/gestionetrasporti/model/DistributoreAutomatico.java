package it.be.gestionetrasporti.model;

import javax.persistence.Entity;

@Entity
public class DistributoreAutomatico extends PuntoVendita {
	
	private StatoDistributore stato;

	public StatoDistributore getStato() {
		return stato;
	}

	public void setStato(StatoDistributore stato) {
		this.stato = stato;
	}




}
