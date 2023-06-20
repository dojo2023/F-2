package servlet;

import java.io.IOException;

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
		String id = request.getParameter("id");
		String date = request.getParameter("date");
		String name = request.getParameter("spotname");
		String address = request.getParameter("spotaddress");
		String genre = request.getParameter("genre");
		String remarks = request.getParameter("spotremarks");

		// 更新または削除を行う
		SpotDAO sDao = new SpotDAO();
		if (request.getParameter("update").equals("更新")) {
			sDao.update(new Spot(date,  genre, name, address, remarks));// 更新成功
		}
		else if(request.getParameter("delete").equals("削除")){
			sDao.delete(id);	// 削除成功
		}


	// 結果ページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/list.jsp");
		dispatcher.forward(request, response);
	}
}



