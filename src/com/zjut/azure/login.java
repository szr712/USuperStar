package com.zjut.azure;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con = null;

	/**
	 * 初始化连接数据库
	 * 
	 * @see HttpServlet#HttpServlet()
	 */
	public void init() {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String url = "jdbc:sqlserver://127.0.0.1:1433;databaseName=USuperStar";
			con = (Connection) DriverManager.getConnection(url, "sa", "zirui990712");
//			System.out.println("good!");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	/**
	 * 实现自动登录 自动登录保存一小时
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//System.out.println(1);
		String value1 = "", value2 = "";
		Cookie cookie = null;
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				cookie = cookies[i];
				if (cookie.getName().equals("num"))
					value1 = cookie.getValue();
				if (cookie.getName().equals("password"))
					value2 = cookie.getValue();
			}
			String sql = "SELECT * FROM Administrator WHERE Anum=?";
			PreparedStatement pStatement;
			if (!value1.equals("")) {
				try {
					pStatement = con.prepareStatement(sql);
					pStatement.setString(1, value1);
					ResultSet resultSet = pStatement.executeQuery();
					Administrator administrator = new Administrator();
					ArrayList<Administrator> aList = new ArrayList<>();
					while (resultSet.next()) {

						administrator.setNum(resultSet.getString("Anum"));
						administrator.setName(resultSet.getString("Aname"));
						administrator.setEmail(resultSet.getString("Aemail"));
						administrator.setPassword(resultSet.getString("Apassword").trim());
						aList.add(administrator);
					}

					if (!aList.isEmpty() && value2.equals(administrator.getPassword())) {

						request.setAttribute("Admi", administrator);

						RequestDispatcher rDispatcher = request.getRequestDispatcher("/welcome.jsp");
						rDispatcher.forward(request, response);
					} else {
						RequestDispatcher rDispatcher = request.getRequestDispatcher("/index.jsp");
						rDispatcher.forward(request, response);
					}

				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String num = request.getParameter("num");
		String password = request.getParameter("password");
		ArrayList<Administrator> aList = new ArrayList<>();
		String sql = "SELECT * FROM Administrator WHERE Anum=?";
		try {

			PreparedStatement pStatement = con.prepareStatement(sql);
			pStatement.setString(1, num);
			ResultSet resultSet = pStatement.executeQuery();

			// System.out.println(password);

			Administrator administrator = new Administrator();
			while (resultSet.next()) {

				administrator.setNum(resultSet.getString("Anum"));
				administrator.setName(resultSet.getString("Aname"));
				administrator.setEmail(resultSet.getString("Aemail"));
				administrator.setPassword(resultSet.getString("Apassword").trim());
				aList.add(administrator);
			}

			if (!aList.isEmpty() && password.equals(administrator.getPassword())) {
				//request.getParameter("login-save");
				if (request.getParameter("login-save") != null && request.getParameter("login-save").equals("on")) {
					Cookie numCookie = new Cookie("num", num);
					Cookie passwordCookie = new Cookie("password", password);
					numCookie.setMaxAge(60 * 60);//保存一小时
					passwordCookie.setMaxAge(60 * 60);
					response.addCookie(numCookie);
					response.addCookie(passwordCookie);
				}

				request.setAttribute("Admi", administrator);
				RequestDispatcher rDispatcher = request.getRequestDispatcher("/welcome.jsp");
				rDispatcher.forward(request, response);
			} else {
				request.setAttribute("fail", "登录失败，请重试！");
				RequestDispatcher rDispatcher = request.getRequestDispatcher("/index.jsp");
				rDispatcher.forward(request, response);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
