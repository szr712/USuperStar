package com.zjut.azure;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.eclipse.jdt.internal.compiler.ast.FalseLiteral;

import com.sun.javafx.logging.PulseLogger;

public class TypeDao extends BaseDao {

	public TypeDao() {
		// TODO Auto-generated constructor stub
	}

	// 增加一个房型
	public boolean addType(Type type) {
		String sql = "INSERT INTO Type VALUES(?,?,?,?,?,?)";
		try {
			Connection connection = dataSource.getConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, type.getType());
			preparedStatement.setString(2, type.getBed());
			preparedStatement.setInt(3, type.getCapability());
			preparedStatement.setBoolean(4, type.isWifi());
			preparedStatement.setInt(5, type.getRoomsize());
			preparedStatement.setFloat(6, type.getPrice());
			preparedStatement.executeUpdate();
			connection.close();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

	}

	// 删除房型
	public boolean deleteType(Type type) {
		String sql = "DELETE FROM Type WHERE Ttype=?";
		Connection connection;
		try {
			connection = dataSource.getConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, type.getType());
			preparedStatement.executeUpdate();
			connection.close();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

	}

	// 更改一个房型
	public boolean changeType(Type type,String Ttype) {
		String sql="UPDATE Type	SET Ttype=?,Tbed=?,Tcapability=?,Twifi=?,Troomsize=?,Tprice=? WHERE Ttype=?";
		Connection connection;
		try {
			connection=dataSource.getConnection();
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1, type.getType());
			preparedStatement.setString(2, type.getBed());
			preparedStatement.setInt(3, type.getCapability());
			preparedStatement.setBoolean(4, type.isWifi());
			preparedStatement.setInt(5, type.getRoomsize());
			preparedStatement.setFloat(6, type.getPrice());
			preparedStatement.setString(7, Ttype);
			preparedStatement.executeUpdate();
			connection.close();
			return true;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
	}

	// 查询所有房型
	public ArrayList<Type> findType() {

		ArrayList<Type> typelist = new ArrayList<>();
		String sql = "SELECT * FROM Type";
		try {
			Connection connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			ResultSet resultSet = pStatement.executeQuery();
			while (resultSet.next()) {
				Type type = new Type();
				type.setType(resultSet.getString("Ttype").trim());
				type.setBed(resultSet.getString("Tbed").trim());
				type.setCapability(resultSet.getInt("Tcapability"));
				type.setWifi(resultSet.getBoolean("Twifi"));
				type.setRoomsize(resultSet.getInt("Troomsize"));
				type.setPrice(resultSet.getFloat("Tprice"));
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
