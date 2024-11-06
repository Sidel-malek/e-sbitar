package web.registrationservlet;



import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/prestatire")

public class Prestatire extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   
		 String maladie = request.getParameter("maladie") ; 
		 String symptome = request.getParameter("symptome") ; 
	 
		 RequestDispatcher dispatcher = null; 
		 Connection con =null ; 
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver"); 
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?serverTimezone=Europe/Paris" , "username" , "password" ) ;
			PreparedStatement pst = con.prepareStatement("insert into maladie ( nom , id_symptome  ) values(?,?)");
			pst.setString(1, maladie);
			pst.setString(2, symptome);
		
	        
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("index.jsp");
			if( rowCount >0 ) {
				request.setAttribute("status", "success");
			
			}
			dispatcher.forward(request, response);
			
		}catch(Exception e) {
			e.printStackTrace();
			dispatcher = request.getRequestDispatcher("login.jsp");
			
			}finally {
				try {
			
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
			}
		 
		}

}
