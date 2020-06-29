package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import model.Member;


@WebServlet("/addServlet")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AddServlet() {
        super();
     
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Member m=new Member();
		m.setName(request.getParameter("name"));
		m.setUsername(request.getParameter("username"));
		m.setPassword(request.getParameter("password"));
		m.setPhone(request.getParameter("phone"));
		m.setAddress(request.getParameter("address"));
		
		if(MemberDao.queryUser(m.getUsername())) {
			response.sendRedirect("addError.jsp");
		}
		else {
			new MemberDao().add(m);
			response.sendRedirect("addSuccess.jsp");
		}
		
	}

}
