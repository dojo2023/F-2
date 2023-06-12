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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("next") != null) {
			request.setCharacterEncoding("UTF-8");
			String id = request.getParameter("ID");

			PWresetDAO iDao = new PWresetDAO();
			if (iDao.IdExist(new Idpw(id, "", ""))) {
				request.setAttribute("check_id", id);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/question.jsp");
				dispatcher.forward(request, response);
			}
//idが違った場合の画面処理
			/*else {
				request.setAttribute("result",
				new Result("", "", "/f2project/resetServlet"));
				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/completion.jsp");
				dispatcher.forward(request, response);
			}*/
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/reset.jsp");
		dispatcher.forward(request, response);
	}
}
