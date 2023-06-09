package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.IdpwDAO;
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

		IdpwDAO idao = new IdpwDAO();
		if (idao.insert(new Idpw(id,pw,answer))) {
			request.setAttribute("result",
			new Result("登録が成功しました", "登録しました。", "/f2project/LoginServlet"));
		}
		else {												// 登録失敗
			request.setAttribute("result",
			new Result("登録に失敗しました", "登録できませんでした。", "/f2project/registServlet"));
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/completion.jsp");
		dispatcher.forward(request, response);
	}

}
