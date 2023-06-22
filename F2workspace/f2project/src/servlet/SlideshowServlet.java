package servlet;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ImgDAO;
import model.Spot;

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
			Story = "img/memoryicon";
			ImgDAO idDao = new ImgDAO();
			List<String> idList = idDao.selectmemory(new Spot("","",Story,"","",""));
			for(String eachimg : idList) {
				ImgDAO imgDao = new ImgDAO();
				List<String> data = imgDao.selectimg(eachimg);
				for(String eachimg2 : data) {
				   imgList.add(eachimg2);
				}
			}
		}
		else if(Story.equals("2")) {
			LocalDate nowdate = LocalDate.now();
			nowdate = nowdate.minusYears(1);
			String strnowdate = nowdate.toString();
			String date = strnowdate.substring(0,4);
			ImgDAO idDao = new ImgDAO();
			List<String> idList = idDao.select1yearago(new Spot("",date,"","","",""));
			for(String eachimg : idList) {
				ImgDAO imgDao = new ImgDAO();
				List<String> data = imgDao.selectimg(eachimg);
				for(String eachimg2 : data) {
				   imgList.add(eachimg2);
				}
			}
		}
		else if(Story.equals("3")) {
			Story = "img/foodicon";
			ImgDAO idDao = new ImgDAO();
			List<String> idList = idDao.selectmemory(new Spot("","",Story,"","",""));
			for(String eachimg : idList) {
				ImgDAO imgDao = new ImgDAO();
				List<String> data = imgDao.selectimg(eachimg);
				for(String eachimg2 : data) {
				   imgList.add(eachimg2);
				}
			}
		}
			request.setAttribute("imgList", imgList);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/Slideshow.jsp");
			dispatcher.forward(request, response);
	}

}
