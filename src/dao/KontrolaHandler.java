package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.sql.Date;


public class KontrolaHandler {
	
	public ArrayList<Kontrola> getControls() {
		
		ArrayList<Kontrola> result = new ArrayList<Kontrola>();
		
		try {
			
			Connection conn = DBConnection.getConnection();
			PreparedStatement stmt = conn.prepareStatement("SELECT * FROM inspekcijedb.inspKontrola");
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()) {
				Kontrola cont = new Kontrola();
				
				cont.setIdKontrole(rs.getInt("idKontrole"));
				cont.setDatum(rs.getDate("datum"));
				cont.setIdTijela(rs.getInt("idTijela"));
				cont.setIdProizvoda(rs.getInt("idProizvoda"));
				cont.setRezultatKontrole(rs.getString("rezultatKontrole"));
				cont.setProizvodSiguran(rs.getBoolean("proizvodSiguran"));
			
				result.add(cont);
			}
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
		return result;
	}
	
	//Handler za iscitavanje jedne kontrole iz baze
	public Kontrola getControl(int id) {
		
		Kontrola cont = new Kontrola();
		
		try {
			
			Connection conn = DBConnection.getConnection();
			PreparedStatement stmt = conn.prepareStatement("SELECT * FROM inspekcijedb.inspKontrola WHERE idKontrole = ?");
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			if(rs.next()) {
				cont.setIdKontrole(rs.getInt("idKontrole"));
				cont.setDatum(rs.getDate("datum"));
				cont.setIdTijela(rs.getInt("idTijela"));
				cont.setIdProizvoda(rs.getInt("idProizvoda"));
				cont.setRezultatKontrole(rs.getString("rezultatKontrole"));
				cont.setProizvodSiguran(rs.getBoolean("proizvodSiguran"));
			}

		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
		return cont;
	}
	
	//Handler za dodavanje u bazu
	public void addControls(int idKontrole, Date datum, int idTijela, int idProizvoda, String rezultatKontrole, boolean proizvodSiguran) {
		try {
			
			Connection conn = DBConnection.getConnection();
			PreparedStatement stmt = conn.prepareStatement("INSERT INTO inspekcijedb.inspKontrola(idKontrole, datum, idTijela, idProizvoda, rezultatKontrole, proizvodSiguran) VALUES(?,?,?,?,?,?)");
			stmt.setInt(1, idKontrole);
			stmt.setDate(2, datum);
			stmt.setInt(3, idTijela);
			stmt.setInt(4, idProizvoda);
			stmt.setString(5, rezultatKontrole);
			stmt.setBoolean(6, proizvodSiguran);
			
			stmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//Handler za brisanje iz baze 
	public void deleteControls(int idKontrole) {
		try {
			
			Connection conn = DBConnection.getConnection();
			PreparedStatement stmt = conn.prepareStatement("DELETE FROM inspekcijedb.inspKontrola WHERE idKontrole = ?");
			stmt.setInt(1, idKontrole);
			
			stmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//Handler za izmjenu kontrola iz baze
	public void adjustControls(int idKontrole, Date datum, int idTijela, int idProizvoda, String rezultatKontrole, boolean proizvodSiguran) {
		try {
			
			Connection conn = DBConnection.getConnection();
			PreparedStatement stmt = conn.prepareStatement("UPDATE inspekcijedb.inspKontrola SET datum = ?, idTijela = ?, idProizvoda = ?, rezultatKontrole = ?, proizvodSiguran = ? WHERE idKontrole = ?");
			stmt.setInt(6, idKontrole);
			stmt.setDate(1, datum);
			stmt.setInt(2, idTijela);
			stmt.setInt(3, idProizvoda);
			stmt.setString(4, rezultatKontrole);
			stmt.setBoolean(5, proizvodSiguran);
			
			stmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}	
		
	
	//Odabir idKontrole i stavljanje podataka u listu
	public ArrayList<Detalji> getDetails(int idKontrole) {
		
		ArrayList<Detalji> result = new ArrayList<Detalji>();
		try {
			
			Connection conn = DBConnection.getConnection();
			PreparedStatement stmt = conn.prepareStatement("SELECT proizvodi.serijskiBroj, proizvodi.nazivProizvoda, proizvodi.zemljaPorijekla, inspKontrola.datum, inspKontrola.rezultatKontrole FROM inspKontrola INNER JOIN proizvodi ON proizvodi.idProizvoda=inspKontrola.idProizvoda WHERE inspKontrola.idKontrole=?;");
			stmt.setInt(1, idKontrole);
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()) {
				
				Detalji det = new Detalji();
				
				det.setNazivProizvoda(rs.getString("nazivProizvoda"));
				det.setSerijskiBroj(rs.getInt("serijskiBroj"));
				det.setZemljaPorijekla(rs.getString("zemljaPorijekla"));
				det.setDatum(rs.getDate("datum"));
				det.setRezultatKontrole(rs.getString("rezultatKontrole"));
			
				result.add(det);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	//Prikaz sortirane tabele inspekcijskih kontrola po odabranom datumu
	public ArrayList<Kontrola> getControlsSort(Date dat1, Date dat2) {
		
		ArrayList<Kontrola> result = new ArrayList<Kontrola>();
		
		try {
			
			Connection conn = DBConnection.getConnection();
			PreparedStatement stmt = conn.prepareStatement("SELECT * FROM inspekcijedb.inspKontrola WHERE datum BETWEEN ? AND ? ORDER BY datum ASC");
			stmt.setDate(1, dat1);
			stmt.setDate(2, dat2);
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()) {
				Kontrola cont = new Kontrola();
				
				cont.setIdKontrole(rs.getInt("idKontrole"));
				cont.setDatum(rs.getDate("datum"));
				cont.setIdTijela(rs.getInt("idTijela"));
				cont.setIdProizvoda(rs.getInt("idProizvoda"));
				cont.setRezultatKontrole(rs.getString("rezultatKontrole"));
				cont.setProizvodSiguran(rs.getBoolean("proizvodSiguran"));
			
				result.add(cont);
			}
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
		return result;
	}
	
	
}








