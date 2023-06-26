package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ImgDAO;
import dao.SpotDAO;
import model.Spot;

/**
 * Servlet implementation class listServlet
 */
@WebServlet("/listServlet")
public class listServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<String> imgList = new ArrayList<String>();

		SpotDAO sDao = new SpotDAO();
		List<Spot> cardList = sDao.select(new Spot("","","","","",""));
		ImgDAO idDao = new ImgDAO();
		List<String> idList = idDao.select(new Spot("","","","","",""));
		for(String eachimg : idList) {
			ImgDAO imgDao = new ImgDAO();
			List<String> data = imgDao.selectimg(eachimg);
			for(String eachimg2 : data) {
			   imgList.add(eachimg2);
			}
		}
		// 検索結果をリクエストスコープに格納する
		request.setAttribute("cardList", cardList);
		request.setAttribute("imgList", imgList);

// メニューページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/list.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<String> imgList = new ArrayList<String>();
		String returnlist[][];
		request.setCharacterEncoding("UTF-8");
		String date = request.getParameter("date");
		String genre = request.getParameter("genre");
		String spotname = request.getParameter("spotname");
		String spotaddress = request.getParameter("spotaddress");

		SpotDAO sDao = new SpotDAO();
		List<Spot> cardList = sDao.select(new Spot("",date,genre,spotname,spotaddress,""));
		ImgDAO idDao = new ImgDAO();
		List<String> idList = idDao.select(new Spot("",date,genre,spotname,spotaddress,""));
		//String returnlist[idList.size()][];
		for(String eachimg : idList) {
			ImgDAO imgDao = new ImgDAO();
			List<String> data = imgDao.selectimg(eachimg);
			for(String eachimg2 : data) {
			   imgList.add(eachimg2);
			}
		}
		// 検索結果をリクエストスコープに格納する
		request.setAttribute("cardList", cardList);
		request.setAttribute("imgList", imgList);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/list.jsp");
		dispatcher.forward(request, response);
	}
}

