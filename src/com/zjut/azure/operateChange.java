package com.zjut.azure;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class typeChange
 */
@WebServlet("/operateChange")
public class operateChange extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public operateChange() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		OperatetypeDao typeDao=new OperatetypeDao();
		Operatetype type=new Operatetype();
		
		ArrayList<Operatetype> typelist=typeDao.findType();
		request.setCharacterEncoding("UTF-8");
		request.getParameter("num");
		int i=Integer.parseInt(request.getParameter("change"));
		type.setNum(request.getParameter("num").trim());
		type.setName(request.getParameter("name").trim());
		type.setSex(request.getParameter("sex").trim());
		type.setEmail(request.getParameter("email").trim());
		type.setPassword(request.getParameter("password").trim());
	
		boolean flag=typeDao.changeType(type, typelist.get(i).getNum());
		if(flag) {
			RequestDispatcher requestDispatcher=getServletContext().getRequestDispatcher("/operateSetting");
			requestDispatcher.forward(request, response);
		}
	}

}
