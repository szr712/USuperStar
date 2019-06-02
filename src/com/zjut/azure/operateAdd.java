package com.zjut.azure;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class typeAdd
 */
@WebServlet("/operateAdd")
public class operateAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public operateAdd() {
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
		OperatetypeDao typeDao=new OperatetypeDao();
		Operatetype type=new Operatetype();

		request.setCharacterEncoding("UTF-8");
		//request.getParameter("type");
		//Boolean.parseBoolean(request.getParameter("WIFI"));
		type.setNum(request.getParameter("num").trim());
		type.setName(request.getParameter("name").trim());
		type.setSex(request.getParameter("sex").trim());
		type.setEmail(request.getParameter("email").trim());
		type.setPassword(request.getParameter("password").trim());
	
		boolean flag=typeDao.addType(type);
		if(flag) {
			RequestDispatcher requestDispatcher=getServletContext().getRequestDispatcher("/operateSetting");
			requestDispatcher.forward(request, response);
		}
	}

}
