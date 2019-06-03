package com.zjut.azure;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class roomSetting
 */
@WebServlet("/roomSetting")
public class roomSetting extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DataSource dataSource;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public roomSetting() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RoomDao roomDao=new RoomDao();
		ArrayList<Room> roomlist=new ArrayList<>();
		roomlist=roomDao.findRoom();
		request.setAttribute("roomlist", roomlist);
		
		TypeDao typeDao=new TypeDao();
		ArrayList<Type> typelist=new ArrayList<>();
		typelist=typeDao.findType();
		request.setAttribute("typelist", typelist);
		
		RequestDispatcher requestDispatcher=getServletContext().getRequestDispatcher("/roomSetting.jsp");
		requestDispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
