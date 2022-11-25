//Author: Megha Jamloki 
//Minor Enhancement: Gautami Phutane
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

@WebServlet("/bookAppointment")
public class BookAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	 public BookAppointmentServlet() {
	        super();
	    }
	 
	  @Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    	this.doPost(req,resp);
		}
	 
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
	            throws ServletException, IOException {
	    	response.setContentType("text/html");
	          
	          String patId = request.getParameter("patId");
	          String departments = request.getParameter("departments");
	          String doctor = request.getParameter("doctor");
	          String time = request.getParameter("time");
	          
				/*
				 * String date1 = request.getParameter("appointmentDate"); SimpleDateFormat sdf
				 * = new SimpleDateFormat("YYYY-DD-MM"); String dt = sdf.format(new
				 * Date(date1));
				 */

	       
	          Date selectedDate = new Date();
				/*
				 * try { selectedDate = new
				 * SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("appointmentDate"))
				 * ; System.out.println(selectedDate); } catch (ParseException e) { // TODO
				 * Auto-generated catch block e.printStackTrace(); }
				 */ 
			
			 String pattern = "MM/dd/yyyy";
		       DateFormat df = new SimpleDateFormat(pattern);
		      // Date today = Calendar.getInstance().getTime();        
		       String date = df.format(selectedDate);
			
	          
	          request.setAttribute("patId", patId);
	          request.setAttribute("departments", departments);
	          request.setAttribute("doctor", doctor);
	          request.setAttribute("appointmentDate", date);
	          request.setAttribute("time", time);
	          
	          request.getRequestDispatcher("/booked.jsp").forward(request, response);
	                
	          return;
	    }
	
}