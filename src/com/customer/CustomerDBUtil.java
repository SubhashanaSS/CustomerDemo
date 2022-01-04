package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static List <Customer> validate(String userName, String password){
		
		ArrayList<Customer> cus = new ArrayList<>();
		
		//02- validate
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "select * from customer where username='"+userName+"' and password= '"+password+"'  ";
				rs = stmt.executeQuery(sql);
				
				if(rs.next()) {
					int id = rs.getInt(1);
					String name = rs.getString(2);
					String email = rs.getString(3);
					String phone = rs.getString(4);
					String userU = rs.getString(5);
					String passU = rs.getString(6);
					
					Customer c = new Customer(id,name,email,phone,userU,passU);
					cus.add(c);
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
		
		return cus;
	}
	
	public static boolean insertcustomer(String name, String email, String phone, String username,String password ) {
	/*Create parameters to catch data from *CustomerInsert.java* servlet.
	 * Boolean value use for inform servlet class that data insert success or failed */
		
		boolean isSuccess = false;
		
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into customer values (0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {          //checks sql query executed values or not
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
}
