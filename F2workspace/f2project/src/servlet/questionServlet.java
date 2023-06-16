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
		String question = request.getParameter("QUESTION");
		String answer = request.getParameter("ANSWER");

		PWresetDAO pdao = new PWresetDAO();
		if (pdao.AnsExist(new Idpw("", "", answer))) {
			if(question.equals("1")) {
				question="しつもん1";
			}
			if(question.equals("2")) {
				question="しつもん2";
			}
			if(question.equals("3")) {
					question="しつもん3";
			}

			request.setAttribute("check_question", question);
			request.setAttribute("check_answer", answer);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/newpw.jsp");
			dispatcher.forward(request, response);
		}
		else if (!pdao.AnsExist(new Idpw("", "", answer))) {
			request.setAttribute("answer", answer);
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/question.jsp");
		dispatcher.forward(request, response);
	}
}