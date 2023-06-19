package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.IdpwDAO;
import dao.PWresetDAO;
import model.Idpw;
import model.Result;

/**
 * Servlet implementation class completionServlet
 */
@WebServlet("/completionServlet")
public class completionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("ID");
		String pw = request.getParameter("PW");
		String answer = request.getParameter("ANSWER");

		if (request.getParameter("pw_regist") != null) {
			PWresetDAO pdao = new PWresetDAO();
			if (pdao.PWupdate(pw, id)) {
				request.setAttribute("result",
				new Result("パスワード再登録成功", "パスワードを再登録しました。", "/f2project/LoginServlet", "ログイン"));
			}
		}
		else if (request.getParameter("regist") != null) {
			IdpwDAO idao = new IdpwDAO();
			if (idao.insert(new Idpw(id,pw,answer))) {
				request.setAttribute("result",
				new Result("新規登録完了", "登録しました。", "/f2project/LoginServlet", "ログイン"));
			}
			else {												// 登録失敗
				request.setAttribute("result",
				new Result("新規登録失敗", "登録できませんでした。同じIDが存在している可能性があります。", "/f2project/registServlet", "新規登録"));
			}
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/completion.jsp");
		dispatcher.forward(request, response);
	}
}
