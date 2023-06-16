package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PWresetDAO;
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

		PWresetDAO pdao = new PWresetDAO();
		if (pdao.PWupdate(pw)) {
			request.setAttribute("result",
			new Result("パスワード再登録完了画面", "パスワードのリセットに失敗しました。", "/f2project/resetServlet", "新規パスワード入力"));
			response.sendRedirect("/f2project/completionServlet");
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/completion.jsp");
		dispatcher.forward(request, response);
	}

}
