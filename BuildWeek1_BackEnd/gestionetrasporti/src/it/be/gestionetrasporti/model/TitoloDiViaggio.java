package it.be.gestionetrasporti.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;

@Entity
public class TitoloDiViaggio {
		
	@Id
	@SequenceGenerator(name = "titolo_seq", sequenceName = "titolo_seq", allocationSize = 1)
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "titolo_seq")
	private Long id;
	
	private String codice;
	
	@ManyToOne
	private PuntoVendita emittente;
	
	private Date dataEmissione;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public PuntoVendita getEmittente() {
		return emittente;
	}

	public void setEmittente(PuntoVendita emittente) {
		this.emittente = emittente;
	}

	public Date getDataEmissione() {
		return dataEmissione;
	}

	public void setDataEmissione(Date dataEmissione) {
		this.dataEmissione = dataEmissione;
	}

	public String getCodice() {
		return codice;
	}

	public void setCodice(String codice) {
		this.codice = codice;
	}

}
