
package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.CUSERDAO;
import model.User;
import model.UserDAO;
import model.étudiant;
@WebServlet("/studentListServletForTeacher")

public class TeacherSTUlist extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public TeacherSTUlist() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			
		if (request.getSession().getAttribute("user") != null){
			

			
			CUSERDAO userDAOEtud = new CUSERDAO();
			
			ArrayList<étudiant> etudListG = null;
			//ArrayList<étudiant> etudList = null;
				//String group = request.getParameter("groupeSelector");

			
			try {
				//etudListG = userDAOEtud.getEtudiant();
				
					etudListG = userDAOEtud.getEtudiant();
					request.setAttribute("etudListG",etudListG);
					RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/TEACHERstulist.jsp");
					dispatcher.include(request, response);

				
				
				
			}catch (InstantiationException | IllegalAccessException e) {
				
				e.printStackTrace();
			}
			
			//request.setAttribute("etudListG",etudListG);
			//RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/TEACHERstulist.jsp");
			//dispatcher.include(request, response);
			
		}else {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/logIn.jsp");
			dispatcher.include(request, response);
		} 
				
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		String group = request.getParameter("groupeSelector");
		CUSERDAO userDAOEtud = new CUSERDAO();
		
		ArrayList<étudiant> etudListG = null;
		RequestDispatcher dispatcher1;
		
		try {

			
			System.out.printf("this is the group",group);
				etudListG = userDAOEtud.getEtudiantGroupedBYgroup(group);
				request.setAttribute("etudListG",etudListG);
				 dispatcher1 = request.getRequestDispatcher("/WEB-INF/TEACHERstulist.jsp");
				dispatcher1.include(request, response);

		/*	if( group != null) {	}else{
					etudListG = userDAOEtud.getEtudiantGroupedBYgroup("A");
					request.setAttribute("etudListG",etudListG);
					 dispatcher1 = request.getRequestDispatcher("/WEB-INF/TEACHERstulist.jsp");
					dispatcher1.include(request, response);

				}*/
			
		} catch (InstantiationException | IllegalAccessException e) {
			e.printStackTrace();
		}
		
		

		
	}
}
