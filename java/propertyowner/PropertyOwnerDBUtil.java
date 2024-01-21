package propertyowner;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PropertyOwnerDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static List<PropertyOwner> validate(String userName,String password){
		
		ArrayList<PropertyOwner> po = new ArrayList<>();
		
		try {
			con = dbconnect.DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from propertyowner where username = '"+userName+"'and password = '"+password+"'";
			
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String nic = rs.getString(3);
				String dob = rs.getString(4);
				String email = rs.getString(5);
				String phone = rs.getString(6);
				String gender = rs.getString(7);
				String address = rs.getString(8);
				String username = rs.getString(9);
				String upassword = rs.getString(10);
				
				PropertyOwner p = new PropertyOwner(id,name,nic,dob,email,phone,gender,address,username,upassword);
				po.add(p);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return po;
	}
	
	public static boolean insertPropertyOwner(String name,String nic,String dob,String email,String phone,String gender,String address,String username,String password,String repwd) {
		boolean isSuccess=false;
		
		try {
		con = dbconnect.DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "insert into propertyowner values(0,'"+name+"','"+nic+"','"+dob+"','"+email+"','"+phone+"','"+gender+"','"+address+"','"+username+"','"+password+"','"+repwd+"')";
		
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
	
	
	
	
	public static boolean updatePropertyOwner(String id,String name,String nic,String email,String phone,String address,String username,String password) {
		
		try {
			con = dbconnect.DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update propertyowner set name = '"+name+"', nic = '"+nic+"', email = '"+email+"', phone = '"+phone+"', address = '"+address+"', username = '"+username+"', password = '"+password+"' where id = '"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				
				isSuccess = true;
			
			}else {
			
				isSuccess = false;
			
			}
		
		}catch(Exception e) {
			
			e.printStackTrace();
		
		}
		
		return isSuccess;
	}
	
	
	
	
	public static List<PropertyOwner> getPropertyOwnerDetails(String Id){
		
		int convertedid = Integer.parseInt(Id);
		
		ArrayList<PropertyOwner> pow = new ArrayList<>();
		
		try {
			con = dbconnect.DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from propertyowner where id = '"+convertedid+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String nic = rs.getString(3);
				String dob = rs.getString(4);
				String email = rs.getString(5);
				String phone = rs.getString(6);
				String gender = rs.getString(7);
				String address = rs.getString(8);
				String username = rs.getString(9);
				String password = rs.getString(10);
				
				PropertyOwner p = new PropertyOwner(id,name,nic,dob,email,phone,gender,address,username,password);
				pow.add(p);
			}
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		return pow;
	}
	
	
	
	
	
	public static boolean deletePropertyOwner(String id) {
		
		int convid = Integer.parseInt(id);
		
		try {
			
			con = dbconnect.DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from propertyowner where id = '"+convid+"'";
			int r = stmt.executeUpdate(sql);
			
			if(r > 0) {
				
				isSuccess = true;
			
			}else {
				
				isSuccess = false;
			}
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
			
		return isSuccess;
	}

}
