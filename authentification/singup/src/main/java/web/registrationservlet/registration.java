package web.registrationservlet;

import java.io.IOException;
import java.io.PrintWriter;
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


@WebServlet("/registration")


public class registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   
	 String uname = request.getParameter("name") ; 
	 String uemail = request.getParameter("email") ; 
	 String upsw = request.getParameter("pass") ; 
	 String utel = request.getParameter("contact") ; 
	 RequestDispatcher dispatcher = null; 
	 Connection con =null ; 
	try {
		Class.forName("com.mysql.cj.jdbc.Driver"); 
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?serverTimezone=Europe/Paris" , "Malek" , "38032591@malek.dz" ) ;
		PreparedStatement pst = con.prepareStatement("insert into users(uname , uemail , upwd , utel , role ) values(?,?,?,?,?)");
		pst.setString(1, uname);
		pst.setString(2, uemail);
		pst.setString(3, upsw);
		pst.setString(4, utel);
		pst.setString(5, "Patient");
        
		int rowCount = pst.executeUpdate();
		dispatcher = request.getRequestDispatcher("login.jsp");
		if( rowCount >0 ) {
			request.setAttribute("status", "success");
		
		}
		dispatcher.forward(request, response);
		
	}catch(Exception e) {
		e.printStackTrace();
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
