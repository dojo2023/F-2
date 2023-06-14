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
import model.Result;

/**
 * Servlet implementation class newpwServlet
 */
@WebServlet("/newpwServlet")
public class newpwServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// ログインページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/login.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String pw = request.getParameter("PW");

		PWresetDAO idao = new PWresetDAO();
		if (idao.PWupdate(new Idpw("",pw,""))) {
			request.setAttribute("result",
			new Result("", "", "/f2project/LoginServlet"));
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/completion.jsp");
		dispatcher.forward(request, response);
	}

}
