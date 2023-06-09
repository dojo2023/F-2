package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PWresetDAO;
import model.Idpw;

/**
 * Servlet implementation class resetServlet
 */
@WebServlet("/resetServlet")
public class resetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/reset.jsp");
		dispatcher.forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("next") != null) {
			request.setCharacterEncoding("UTF-8");
			String id = request.getParameter("ID");

			PWresetDAO pdao = new PWresetDAO();
			if(pdao.IdExist(new Idpw(id, "", ""))) {
				request.setAttribute("check_id", id);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/question.jsp");
				dispatcher.forward(request, response);
			}
			else if(!pdao.IdExist(new Idpw(id, "", ""))) {
				request.setAttribute("id", id);
			}
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/reset.jsp");
		dispatcher.forward(request, response);
	}
}
