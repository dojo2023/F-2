package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.SpotDAO;
import model.Spot;

/**
 * Servlet implementation class UpdateDeleteServlet
 */
@WebServlet("/UpdateDeleteServlet")
public class UpdateDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// リクエストパラメータを取得する
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("ID");
		String date = request.getParameter("DATE");
		String name = request.getParameter("NAME");
		String address = request.getParameter("ADDRESS");
		String genre = request.getParameter("GENRE");
		String remarks = request.getParameter("REMARKS");

		// 更新または削除を行う
		SpotDAO sDao = new SpotDAO();
		if (request.getParameter("SUBMIT").equals("更新")) {
			sDao.update(new Spot(id, date, genre, name, address, remarks));// 更新成功
		}
		else if(request.getParameter("SUBMIT").equals("削除")) {
			sDao.delete(id);	// 削除成功
		}
		SpotDAO s2Dao = new SpotDAO();
		List<Spot> cardList = s2Dao.select(new Spot("","","","","",""));
		// 検索結果をリクエストスコープに格納する
		request.setAttribute("cardList", cardList);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/list.jsp");
		dispatcher.forward(request, response);
	}
}



