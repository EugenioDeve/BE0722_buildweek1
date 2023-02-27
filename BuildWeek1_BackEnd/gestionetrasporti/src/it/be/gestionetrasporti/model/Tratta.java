package it.be.gestionetrasporti.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

@Entity
public class Tratta {
	
	@Id
	@SequenceGenerator(name = "tratta_seq", sequenceName = "tratta_seq", allocationSize = 1)
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "tratta_seq")
	private Long id;
	
	private String partenza;
	
	private String capolinea;
	
	private Integer tempoPercorrenzaMedia;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getPartenza() {
		return partenza;
	}

	public void setPartenza(String partenza) {
		this.partenza = partenza;
	}

	public String getCapolinea() {
		return capolinea;
	}

	public void setCapolinea(String capolinea) {
		this.capolinea = capolinea;
	}

	public Integer getTempoPercorrenzaMedia() {
		return tempoPercorrenzaMedia;
	}

	public void setTempoPercorrenzaMedia(Integer tempoPercorrenzaMedia) {
		this.tempoPercorrenzaMedia = tempoPercorrenzaMedia;
	}

}
