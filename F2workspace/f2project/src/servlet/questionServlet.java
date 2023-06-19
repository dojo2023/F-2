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
 * Servlet implementation class questionServlet
 */
@WebServlet("/questionServlet")
public class questionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("ID");
		String question = request.getParameter("QUESTION");
		String answer = request.getParameter("ANSWER");

		if (request.getParameter("back") != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/question.jsp");
			dispatcher.forward(request, response);
		}

		PWresetDAO pdao = new PWresetDAO();
		if (pdao.AnsExist(id, answer)) {
			if(question.equals("1")) {
				question="飼っていたペットの名前は？";
			}
			if(question.equals("2")) {
				question="通っていた小学校の名前は？";
			}
			if(question.equals("3")) {
				question="母親の旧姓は？";
			}

			request.setAttribute("check_id", id);
			request.setAttribute("check_question", question);
			request.setAttribute("check_answer", answer);

			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/newpw.jsp");
			dispatcher.forward(request, response);
		}
		request.setAttribute("result",
		new Result("パスワード再登録失敗", "秘密の質問の回答が違います。", "/f2project/LoginServlet", "ログイン"));
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/completion.jsp");
		dispatcher.forward(request, response);
	}
}