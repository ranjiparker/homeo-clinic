package testimonials;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * Servlet implementation class mytestimony
 */
@WebServlet("/mytestimony")
public class mytestimony extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public mytestimony() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		ArrayList<ArrayList<String>> dataList = new ArrayList<>(); 
		try {
			String url = "jdbc:mysql://localhost:3306/usersdb";
			String un = "root";
			String pass = "ranjani24$";
			//String sql = "select * from users";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, un, pass);
			Statement stm = con.createStatement();  
            ResultSet rs = stm.executeQuery("select * from doctors");  
            
            while (rs.next()) 
            {  
//            	Statement stmt = con.createStatement();  
//                ResultSet rst = stm.executeQuery("select pid from doctors where did like'"+rs.getString("did")+"';");  
//                rst.next();
//                Statement stmt1 = con.createStatement();  
//                ResultSet rst1 = stm.executeQuery("select name from person where pid like'"+rst.getString("pid")+"';");  
//                rst1.next();
            	Statement stmt1 = con.createStatement();  
            	ResultSet rst = stmt1.executeQuery("select a.name from person a, doctors b where b.did like'"+rs.getString("did")+"' and b.pid=a.pid;");
            	rst.next();
                ArrayList<String> values = new ArrayList<String>();
                values.add(rst.getString("name"));
                values.add(rs.getString("experience"));
                values.add(rs.getString("specialization")); 
                dataList.add(values);
                out.println(dataList);
            }   
		}
		catch(Exception e) {
			out.println(e);  
		}
		out.println(dataList);
		request.setAttribute("data",dataList);
		RequestDispatcher dispatcher = request.getRequestDispatcher("about_us.jsp");
		if (dispatcher != null){
			dispatcher.forward(request, response);
		} 
		
	}
		
}