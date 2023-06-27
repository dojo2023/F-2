package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		List<String> imgList = new ArrayList<String>();

		if(Story.equals("1")) {
			Random rand = new Random();
	    	int num = rand.nextInt(9);
	    	request.setAttribute("random", num);

			request.setAttribute("imgList", imgList);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/memorySS.jsp");
			dispatcher.forward(request, response);
		}
		else if(Story.equals("2")) {
			Random rand = new Random();
	    	int num = rand.nextInt(9);
	    	request.setAttribute("random", num);

			request.setAttribute("imgList", imgList);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/1yearagoSS.jsp");
			dispatcher.forward(request, response);
		}
		else if(Story.equals("3")) {
			Random rand = new Random();
	    	int num = rand.nextInt(9);
	    	request.setAttribute("random", num);

			request.setAttribute("imgList", imgList);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/foodSS.jsp");
			dispatcher.forward(request, response);
		}
	}


}
