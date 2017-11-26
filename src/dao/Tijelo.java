package dao;

public class Tijelo {
	
	private int idTijela;
	private String nazivTijela;
	private String kontaktOsoba;
	private String inspektorat;
	private String nadleznost;
	
//	public enum inspektorat { 
//		FBIH, 
//		RS, 
//		DISTRIKTBRCKO
//	}
//	public enum nadleznost {
//		TRZISNA_INSPEKCIJA,
//		ZDRAVSTVENO_SANITARNA_INSPEKCIJA
//	}
//
//	
//	public inspektorat status1;
//	public nadleznost status2;
	
//	public String getStatus1() {
//		return this.status1.name();
//	}
//	public void setStatus1(String status1) {
//		this.status1 = inspektorat.valueOf(status1);
//	}
//	public String getStatus2() {
//		return this.status2.name();
//	}
//	public void setStatus2(String status2) {
//		this.status2 = nadleznost.valueOf(status2);
//	}

	public int getIdTijela() {
		return idTijela;
	}
	public void setIdTijela(int idTijela) {
		this.idTijela = idTijela;
	}
	public String getNazivTijela() {
		return nazivTijela;
	}
	public void setNazivTijela(String nazivTijela) {
		this.nazivTijela = nazivTijela;
	}
	public String getKontaktOsoba() {
		return kontaktOsoba;
	}
	public void setKontaktOsoba(String kontaktOsoba) {
		this.kontaktOsoba = kontaktOsoba;
	}
	public String getInspektorat() {
		return inspektorat;
	}
	public void setInspektorat(String inspektorat) {
		this.inspektorat = inspektorat;
	}
	public String getNadleznost() {
		return nadleznost;
	}
	public void setNadleznost(String nadleznost) {
		this.nadleznost = nadleznost;
	};
	
	

}
