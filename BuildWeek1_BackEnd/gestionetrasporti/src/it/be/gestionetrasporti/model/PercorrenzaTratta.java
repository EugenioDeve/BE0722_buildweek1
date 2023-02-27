package it.be.gestionetrasporti.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;

@Entity
public class PercorrenzaTratta {
	
	@Id
	@SequenceGenerator(name = "percorrenzatratta_seq", sequenceName = "percorrenzatratta_seq", allocationSize = 1)
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "percorrenzatratta_seq")
	private Long id;
	
	@ManyToOne
	private Mezzo mezzo;
	
	@ManyToOne
	private Tratta tratta;
	
	private Integer tempoPercorrenza;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}



	public Mezzo getMezzo() {
		return mezzo;
	}

	public void setMezzo(Mezzo mezzo) {
		this.mezzo = mezzo;
	}

	public Tratta getTratta() {
		return tratta;
	}

	public void setTratta(Tratta tratta) {
		this.tratta = tratta;
	}

	public Integer getTempoPercorrenza() {
		return tempoPercorrenza;
	}

	public void setTempoPercorrenza(Integer tempoPercorrenza) {
		this.tempoPercorrenza = tempoPercorrenza;
	}

}
