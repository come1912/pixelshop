package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AdminDaoImp;


import bean.Admin;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{ 
			
			System.out.println("In the Login Servlet");
			Admin admin = new Admin();
			admin.setLogin(request.getParameter("uname"));
			admin.setPass(request.getParameter("password"));
			admin = AdminDaoImp.login(admin);
			if(admin.isValid())
			{
				HttpSession session = request.getSession(true);
				session.setAttribute("currentSessionUser",admin);
				response.sendRedirect("admincp.jsp");
			}else
				
			
			
			
			
			
				response.sendRedirect("LoginFailed.jsp");
		} catch (Throwable exc)
		{
			System.out.println(exc);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}