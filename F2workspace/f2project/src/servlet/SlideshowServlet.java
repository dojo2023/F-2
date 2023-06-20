package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ImgDAO;
import model.Story;

/**
 * Servlet implementation class SlideshowServlet
 */
@WebServlet("/SlideshowServlet")
public class SlideshowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String Story = request.getParameter("story");

		if(Story.equals("1")) {
			Story = "img/memoryicon.png";
			ImgDAO iDao = new ImgDAO();
			List<String> cardList = iDao.select(new Story("",Story));
			Integer end = cardList.size();
			request.setAttribute("cardList", cardList);
			request.setAttribute("end", end);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/Slideshow.jsp");
			dispatcher.forward(request, response);
		}
	}

}
