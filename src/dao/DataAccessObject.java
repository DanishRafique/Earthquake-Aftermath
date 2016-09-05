package dao;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import beans.Acc;
import beans.Client;
import beans.Client;
import beans.ContactUs;
import beans.Food;
import beans.Login;
import beans.Medicine;
import beans.SeekHelp;
import beans.Volunteer;
import oracle.jdbc.pool.OracleDataSource;

public class DataAccessObject {
	private static OracleDataSource ods;
	static{
		try {
			ods=new OracleDataSource();
			ods.setURL("jdbc:oracle:thin:earth_help/aftermath@localhost:1521:XE");
			Connection con=ods.getConnection();
			System.out.println(con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public boolean insertClient(Client c) {
		try {
			Connection con=ods.getConnection();
			String sql="insert into client values(?, ? ,? ,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, c.getUid());
			ps.setString(2, c.getPassword());
			ps.setString(3, c.getFirstName());
			ps.setString(4, c.getLastName());
			InputStream is=c.getImage().getInputStream();
			ps.setBinaryStream(5, is, is.available());
			int result=ps.executeUpdate();
			
			if(result>0)
			{
				con.commit();
				return true;
			}
			System.out.println("here");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}
	public Client check(String uid,String pwd) {
		try {
			Connection conn=ods.getConnection();
			String sql="select * from client where cid=? and password=? ";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, uid);
			ps.setString(2, pwd);
			ResultSet rs=ps.executeQuery();
			
			if(rs.next()){
				Client ob1=new Client();
				ob1.setUid(rs.getString("cid"));
				ob1.setPassword("password");
				ob1.setFirstName(rs.getString("first_name"));
				ob1.setLastName(rs.getString("last_name"));
				return ob1 ;
			}
				
			
			
					
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
		
	}
	public InputStream getImage(String uid) {
		// TODO Auto-generated method stub
		try {
			Connection conn=ods.getConnection();
			String sql="select image from client where cid=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, uid);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
				return rs.getBinaryStream(1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		return null;
	}
	public boolean insertVolunteer(Volunteer v) {
		try {
			Connection conn=ods.getConnection();
			String sql="insert into Volunteer values(?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, v.getFirstName());
			ps.setString(2, v.getLastName());
			ps.setString(3, v.getCity());
			ps.setString(4,v.getCountry());
			ps.setInt(6, v.getarea());
			ps.setInt(7, v.getnum());
			ps.setString(5, v.getEmail());
			int result=ps.executeUpdate();
			if(result>0){
				conn.commit();
				System.out.println("true");
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}
	public void ContactUs(ContactUs c) {
		try {
			Connection conn =ods.getConnection();
			String sql="insert into contactus values(?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, c.getFname());
			ps.setString(2, c.getLname());
			ps.setString(3, c.getPhone());
			ps.setString(4, c.getEmail());
			ps.setString(5, c.getText());
			int result=ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	public boolean insertSeekHelp(SeekHelp s) {
		try {
			Connection conn=ods.getConnection();
			String sql="insert into SeekHelp values(?,?,?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, s.getFirstName());
			ps.setString(2, s.getLastName());
			ps.setString(3, s.getCity());
			ps.setString(8, s.getCountry());
			InputStream is=s.getImage().getInputStream();
			ps.setBinaryStream(4, is, is.available());
			ps.setString(5, s.getFirstName1());
			ps.setString(6, s.getLastName1());
			ps.setString(7, s.getContact());
			int result=ps.executeUpdate();
			if(result>0){
				conn.commit();
				System.out.println("true");
				
			}
			
		} catch (SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}
	public void insertMedicine(Medicine m) {
		try {
			Connection conn=ods.getConnection();
			String sql="insert into medicine values(?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, m.getRegion());
			ps.setString(2, m.getPain());
			ps.setString(3, m.getAnti());
			ps.setString(4, m.getBand());
			ps.setString(5, m.getOther());
			int result=ps.executeUpdate();
			if(result>0)
				conn.commit();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	public void insertFood(Food f) {
		try {
			Connection conn=ods.getConnection();
			String sql="insert into food_distribution values(?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, f.getRegion());
			ps.setString(2, f.getRice());
			ps.setString(3, f.getWheat());
			ps.setString(4, f.getWater());
			ps.setString(5, f.getOther());
			int result=ps.executeUpdate();
			if(result>0)
				conn.commit();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	public void insertAcc(Acc a) {
		try {
			Connection conn=ods.getConnection();
			String sql="insert into accessories values(?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, a.getRegion());
			ps.setString(2, a.getClothes());
			ps.setString(3, a.getBlanket());
			ps.setString(4, a.getTent());
			ps.setString(5, a.getOther());
			int result=ps.executeUpdate();
			if(result>0)
				conn.commit();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
	

}
