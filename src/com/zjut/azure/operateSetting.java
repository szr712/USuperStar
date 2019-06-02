package com.zjut.azure;

import java.io.IOException;
import java.util.ArrayList;

import javax.sql.DataSource;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class typeSetting
 */
@WebServlet("/operateSetting")
public class operateSetting extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DataSource dataSource;
	
	
//    public void init() {
//    	
//    	try {
//    		//System.out.println("goo");
//    		Context context=new InitialContext();
//    		//System.out.println("good");
//			dataSource=(DataSource)  context.lookup("java:comp/env/jdbc/UDS");
//			//System.out.println("good!");
//		} catch (NamingException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//    }
    /**
     * @see HttpServlet#HttpServlet()
     */
    public operateSetting() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		OperatetypeDao typeDao=new OperatetypeDao();
		ArrayList<Operatetype> typelist=new ArrayList<>();
		typelist=typeDao.findType();
		request.setAttribute("typelist", typelist);
		RequestDispatcher requestDispatcher=getServletContext().getRequestDispatcher("/operatorSetting.jsp");
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
