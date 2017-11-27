package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class TijeloHandler {
	
	public ArrayList<Tijelo> getBody() {
		
		ArrayList<Tijelo> result = new ArrayList<Tijelo>();
		
		try {
			
			Connection conn = DBConnection.getConnection();
			PreparedStatement stmt = conn.prepareStatement("SELECT * FROM inspekcijedb.inspTijela");
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()) {
				Tijelo bd = new Tijelo();
				
				bd.setIdTijela(rs.getInt("idTijela"));
				bd.setNazivTijela(rs.getString("nazivTijela"));
			    bd.setKontaktOsoba(rs.getString("kontaktOsoba"));
			    
			    bd.setInspektorat(rs.getString("inspektorat"));
			    bd.setNadleznost(rs.getString("nadleznost"));
					
				result.add(bd);
				
			}
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
		return result;
	}

}
