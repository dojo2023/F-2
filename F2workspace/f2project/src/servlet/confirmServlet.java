package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.NewRegistDAO;
import model.Idpw;

/**
 * Servlet implementation class confirmServlet
 */
@WebServlet("/confirmServlet")
public class confirmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("ID");
		String pw = request.getParameter("PW");
		String question = request.getParameter("QUESTION");
		String answer = request.getParameter("ANSWER");

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
		request.setAttribute("check_pw", pw);
		request.setAttribute("check_question", question);
		request.setAttribute("check_answer", answer);

		NewRegistDAO ndao = new NewRegistDAO();
		if (!ndao.AllExist(new Idpw(id,pw,answer))) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/regist.jsp");
			dispatcher.forward(request, response);
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/confirm.jsp");
		dispatcher.forward(request, response);
	}

}
