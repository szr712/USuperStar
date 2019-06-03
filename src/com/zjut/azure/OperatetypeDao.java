package com.zjut.azure;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.eclipse.jdt.internal.compiler.ast.FalseLiteral;

import com.sun.javafx.logging.PulseLogger;
public class OperatetypeDao extends BaseDao
{
	public OperatetypeDao() {
		
		// TODO Auto-generated constructor stub
	}
	
	
	
	public boolean addType(Operatetype type) {
		String sql = "INSERT INTO Operator VALUES(?,?,?,?,?)";
		try {
			Connection connection = dataSource.getConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, type.getNum());			
			preparedStatement.setString(2, type.getName());
			preparedStatement.setString(3, type.getSex());
		    preparedStatement.setString(4, type.getEmail());
			preparedStatement.setString(5, type.getPassword());
			preparedStatement.executeUpdate();
			connection.close();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	
	// 删除操作员
		public boolean deleteType(Operatetype type) {
			String sql = "DELETE FROM Operator WHERE Onum=?";
			Connection connection;
			try {
				connection = dataSource.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(sql);
				preparedStatement.setString(1, type.getNum());
				preparedStatement.executeUpdate();
				connection.close();
				return true;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return false;
			}

		}
		
		
		// 更改一个操作员
		public boolean changeType(Operatetype type,String Onum) {
			String sql="UPDATE Operator	SET Onum=?,Oname=?,Osex=?,Oemail=?,Opassword=? WHERE Onum=?";
			Connection connection;
			try {
				connection=dataSource.getConnection();
				PreparedStatement preparedStatement=connection.prepareStatement(sql);
				preparedStatement.setString(1, type.getNum());
				preparedStatement.setString(2, type.getName());
				preparedStatement.setString(3, type.getSex());
				preparedStatement.setString(4, type.getEmail());
				preparedStatement.setString(5, type.getPassword());
				preparedStatement.setString(6, Onum);
				preparedStatement.executeUpdate();
				connection.close();
				return true;
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return false;
			}
			
		}
		
		
		
		public ArrayList<Operatetype> findType() {

			ArrayList<Operatetype> typelist = new ArrayList<>();
			String sql = "SELECT * FROM Operator";
			try {
				Connection connection = dataSource.getConnection();
				PreparedStatement pStatement = connection.prepareStatement(sql);
				ResultSet resultSet = pStatement.executeQuery();
				while (resultSet.next()) {
					Operatetype type = new Operatetype();
					type.setNum(resultSet.getString("Onum".trim()));
					type.setName(resultSet.getString("Oname").trim());
					type.setSex(resultSet.getString("Osex".trim()));
					type.setEmail(resultSet.getString("Oemail").trim());
					type.setPassword(resultSet.getString("Opassword".trim()));	
					typelist.add(type);

				}
				connection.close();
				return typelist;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			}

		}
	
	
	
	
	
	
}
