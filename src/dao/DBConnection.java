package dao;
import java.sql.Connection;
import java.sql.DriverManager;


public class DBConnection { 
	static String url 	   = new String("jdbc:mysql://localhost:3306/inspekcijedb");
	static String username = new String("root");
	static String password = new String("1234");
	
	public static Connection getConnection() throws Exception {
		 	Class.forName("com.mysql.jdbc.Driver");
		 	Connection con = DriverManager.getConnection(url,username,password);
			return con;  
    }
}
