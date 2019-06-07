package com.zjut.azure;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.eclipse.jdt.internal.compiler.ast.FalseLiteral;

import com.sun.javafx.logging.PulseLogger;

public class RoomDao extends BaseDao {

	public RoomDao() {
		// TODO Auto-generated constructor stub
	}

	// 增加一个房间
	public boolean addRoom(Room room) {
		String sql = "INSERT INTO Room VALUES(?,?,?,?,?,?,?,?,?)";
		try {
			Connection connection = dataSource.getConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, room.getNum());
			preparedStatement.setString(2, room.getType());
			preparedStatement.setString(3, room.getStatus());
			preparedStatement.setString(4, room.getRemark());
			preparedStatement.setString(5,"");
			preparedStatement.setString(6,"");
			preparedStatement.setString(7,"");
			preparedStatement.setString(8,"");
			preparedStatement.setString(9,"");
			preparedStatement.executeUpdate();
			connection.close();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

	}

	// 删除房间
	public boolean deleteRoom(Room room) {
		String sql = "DELETE FROM Room WHERE Rnum=?";
		Connection connection;
		try {
			connection = dataSource.getConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, room.getNum());
			preparedStatement.executeUpdate();
			connection.close();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

	}

	// 更改一个房间
	public boolean changeRoom(Room room,String Rnum) {
		String sql="UPDATE Room	SET Rnum=?,Rtype=?,Rstatus=?,Rremark=? WHERE Rnum=?";
		Connection connection;
		try {
			connection=dataSource.getConnection();
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1, room.getNum());
			preparedStatement.setString(2, room.getType());
			preparedStatement.setString(3, room.getStatus());
			preparedStatement.setString(4, room.getRemark());
			preparedStatement.setString(5, Rnum);
			preparedStatement.executeUpdate();
			connection.close();
			return true;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
	}

	// 查询所有房间
	public ArrayList<Room> findRoom() {

		ArrayList<Room> roomlist = new ArrayList<>();
		String sql = "SELECT * FROM Room";
		try {
			Connection connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			ResultSet resultSet = pStatement.executeQuery();
			while (resultSet.next()) {
				Room room = new Room();
				room.setNum(resultSet.getString("Rnum").trim());
				room.setType(resultSet.getString("Rtype").trim());
				room.setStatus(resultSet.getString("Rstatus").trim());
				if(resultSet.getString("Rremark").trim().equals("") || resultSet.getString("Rremark").trim().equals(null))room.setRemark("无");
				else room.setRemark(resultSet.getString("Rremark"));
				roomlist.add(room);
			}
			connection.close();
			return roomlist;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}

	}

}
