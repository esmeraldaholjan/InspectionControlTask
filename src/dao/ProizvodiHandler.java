package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ProizvodiHandler {
	
	//Handler za iscitavanje iz baze
	public ArrayList<Proizvodi> getProducts() {
		
		ArrayList<Proizvodi> result = new ArrayList<Proizvodi>();
		
		try {
			
			Connection conn = DBConnection.getConnection();
			PreparedStatement stmt = conn.prepareStatement("SELECT * FROM inspekcijedb.proizvodi");
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()) {
				Proizvodi pro = new Proizvodi();
				
				pro.setIdProizvoda(rs.getInt("idProizvoda"));
				pro.setNazivProizvoda(rs.getString("nazivProizvoda"));
				pro.setProizvodjac(rs.getString("proizvodjac"));
				pro.setSerijskiBroj(rs.getInt("serijskiBroj"));
				pro.setZemljaPorijekla(rs.getString("zemljaPorijekla"));
				pro.setOpis(rs.getString("opis"));
			
				result.add(pro);
			}
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
		return result;
	}
	
	//Handler za iscitavanje jednog proizvoda iz baze
		public Proizvodi getProduct(int id) {
			
			Proizvodi pro = new Proizvodi();
			
			try {
				
				Connection conn = DBConnection.getConnection();
				PreparedStatement stmt = conn.prepareStatement("SELECT * FROM inspekcijedb.proizvodi WHERE idProizvoda = ?");
				stmt.setInt(1, id);
				ResultSet rs = stmt.executeQuery();
				if(rs.next()) {
					pro.setIdProizvoda(rs.getInt("idProizvoda"));
					pro.setNazivProizvoda(rs.getString("nazivProizvoda"));
					pro.setProizvodjac(rs.getString("proizvodjac"));
					pro.setSerijskiBroj(rs.getInt("serijskiBroj"));
					pro.setZemljaPorijekla(rs.getString("zemljaPorijekla"));
					pro.setOpis(rs.getString("opis"));
				}

			} catch (Exception e) {
				
				e.printStackTrace();
				
			}
			return pro;
		}
		
	//Handler za dodavanje u bazu
	public void addProducts(int idProizvoda, String nazivProizvoda, String proizvodjac, int serijskiBroj, String zemljaPorijekla, String opis) {
		try {
			
			Connection conn = DBConnection.getConnection();
			PreparedStatement stmt = conn.prepareStatement("INSERT INTO inspekcijedb.proizvodi(idProizvoda, nazivProizvoda, proizvodjac, serijskiBroj, zemljaPorijekla, opis) VALUES(?,?,?,?,?,?)");
			stmt.setInt(1, idProizvoda);
			stmt.setString(2, nazivProizvoda);
			stmt.setString(3, proizvodjac);
			stmt.setInt(4, serijskiBroj);
			stmt.setString(5, zemljaPorijekla);
			stmt.setString(6, opis);
			
			stmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public void adjustProducts(int idProizvoda, String nazivProizvoda, String proizvodjac, int serijskiBroj, String zemljaPorijekla, String opis) {
		try {
			
			Connection conn = DBConnection.getConnection();
			PreparedStatement stmt = conn.prepareStatement("UPDATE inspekcijedb.proizvodi SET nazivProizvoda = ?, proizvodjac = ?, serijskiBroj = ?, zemljaPorijekla = ?, opis = ? WHERE idProizvoda = ?");
			stmt.setInt(6, idProizvoda);
			stmt.setString(1, nazivProizvoda);
			stmt.setString(2, proizvodjac);
			stmt.setInt(3, serijskiBroj);
			stmt.setString(4, zemljaPorijekla);
			stmt.setString(5, opis);
			
			stmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//Handler za brisanje iz baze
	public void deleteProducts(int idProizvoda) {
		try {
			
			Connection conn = DBConnection.getConnection();
			PreparedStatement stmt = conn.prepareStatement("DELETE FROM inspekcijedb.proizvodi WHERE idProizvoda = ?");
			stmt.setInt(1, idProizvoda);
			
			stmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


}
