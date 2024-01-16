package application;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class ApplicationDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	
	
	public static boolean insertApplication(String name,String nic,String dob,String email,String address,String mobile,String paddress,String dates,String pmobile,String company,String job,String sal,String file,String rname,String rmobile,String additional){
		
		isSuccess = false;
		
		
		try {			
			con = dbconnect.DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into application values(0,'"+name+"','"+nic+"','"+dob+"','"+email+"','"+address+"','"+mobile+"','"+paddress+"','"+dates+"','"+pmobile+"','"+company+"','"+job+"','"+sal+"','"+file+"','"+rname+"','"+rmobile+"','"+additional+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				
				isSuccess = true;
			
			}else {
				
				isSuccess = false;
			}
		}catch(Exception e) {
			
			e.printStackTrace();
		}
				
		return isSuccess;
	}

	public static List<ApplicationDetails> getappdetails(String Name){
		
		
		
		ArrayList<ApplicationDetails> ap = new ArrayList<>();
		
		try {
			con = dbconnect.DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from application where name='"+Name+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				String name = rs.getNString(2);
				String nic = rs.getNString(3);
				String dob = rs.getNString(4);
				String email = rs.getNString(5);
				String address = rs.getNString(6);
				String mobile = rs.getNString(7);
				String paddress = rs.getNString(8);
				String dates = rs.getNString(9);
				String pmobile = rs.getNString(10);
				String company = rs.getNString(11);
				String job = rs.getNString(12);
				String sal = rs.getNString(13);
				String rname = rs.getNString(15);
				String rmobile = rs.getNString(16);
				String additional = rs.getNString(17);
				
				ApplicationDetails p = new ApplicationDetails(name,nic,dob,email,address,mobile,paddress,dates,pmobile,company,job,sal,rname,rmobile,additional);
				ap.add(p);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return ap;
	}
	
	
}