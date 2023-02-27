package it.be.gestionetrasporti.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Enumerated;
import javax.persistence.ManyToOne;

@Entity
public class Biglietto extends TitoloDiViaggio {
		
	@Enumerated
	private StatoBiglietto statoBiglietto;
	
	@ManyToOne
	private Mezzo mezzoVidimazione;
	
	private Date dataVidimazione;

	public StatoBiglietto getStatoBiglietto() {
		return statoBiglietto;
	}

	public void setStatoBiglietto(StatoBiglietto statoBiglietto) {
		this.statoBiglietto = statoBiglietto;
	}

	public Mezzo getMezzoVidimazione() {
		return mezzoVidimazione;
	}

	public void setMezzoVidimazione(Mezzo mezzoVidimazione) {
		this.mezzoVidimazione = mezzoVidimazione;
	}

	public Date getDataVidimazione() {
		return dataVidimazione;
	}

	public void setDataVidimazione(Date dataVidimazione) {
		this.dataVidimazione = dataVidimazione;
	}

}