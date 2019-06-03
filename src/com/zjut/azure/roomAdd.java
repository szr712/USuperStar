package com.zjut.azure;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class roomAdd
 */
@WebServlet("/roomAdd")
public class roomAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public roomAdd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RoomDao roomDao=new RoomDao();
		Room room=new Room();

		request.setCharacterEncoding("UTF-8");
		room.setNum(request.getParameter("num").trim());
		room.setType(request.getParameter("type").trim());
		room.setStatus(request.getParameter("status").trim());
		room.setRemark(request.getParameter("remark").trim());
		boolean flag=roomDao.addRoom(room);
		if(flag) {
			RequestDispatcher requestDispatcher=getServletContext().getRequestDispatcher("/roomSetting");
			requestDispatcher.forward(request, response);
		}
	}

}
