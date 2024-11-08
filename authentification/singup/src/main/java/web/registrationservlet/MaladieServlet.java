package web.registrationservlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/maladies")

public class MaladieServlet extends HttpServlet {
	
    private static final long serialVersionUID = 1L;
    RequestDispatcher dispatcher = null; 
	Connection con =null ; 
	
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     

        try {
        	
        	Class.forName("com.mysql.cj.jdbc.Driver"); 
        	
    		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?serverTimezone=Europe/Paris" , "...." , "...." ) ;

            String sql = "SELECT nom, id_symptome FROM maladie";
            PreparedStatement statement = con.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();

            List<Maladie> maladies = new ArrayList<Maladie>();

            while (resultSet.next()) {
                String nom = resultSet.getString("nom");
                String symptome = resultSet.getString("id_symptome");
                Maladie maladie = new Maladie(nom, symptome);
                maladies.add(maladie);
            }

            request.setAttribute("maladies", maladies);

            request.getRequestDispatcher("Sant�.jsp").forward(request, response);

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
}
