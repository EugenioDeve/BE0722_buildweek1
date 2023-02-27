package it.be.gestionetrasporti.model;

public enum TipoMezzo {
	TRAM(200),
	AUTOBUS(50);
	
	private final int numeroPosti;
	
	TipoMezzo(int num){
		this.numeroPosti = num;
	}

	public int getNumeroPosti() {
		return numeroPosti;
	}





}
