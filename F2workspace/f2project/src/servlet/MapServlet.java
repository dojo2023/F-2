package servlet;

import java.io.IOException;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.util.Collection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dao.SpotDAO;
import model.Spot;


/**
 * Servlet implementation class MapServlet
 */
@MultipartConfig(location = "C:\\dojo6\\F2workspace\\f2project\\WebContent\\spot_img")
@WebServlet("/MapServlet")
public class MapServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/map.jsp");
		dispatcher.forward(request, response);
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LocalDate date = LocalDate.now();
		String nowdate = date.toString();
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("spotname");
		String address = request.getParameter("spotaddress");
		String genre = request.getParameter("genre");
		String remarks = request.getParameter("spotremarks");
		Collection <Part> parts = request.getParts();
		String pict_path ="C:\\dojo6\\F2workspace\\f2project\\WebContent\\spot_img";


		SpotDAO sDao = new SpotDAO();
		sDao.insert(new Spot("",nowdate,genre,name,address,remarks));

		for (Part part : parts) {
		    if (part.getName().equals("image")) {
		    	if(part.getSize() != 0) {
		    		SpotDAO i1Dao = new SpotDAO();
		    		String max = Integer.toString(i1Dao.selectid());
		    		String fname = Paths.get(part.getSubmittedFileName()).getFileName().toString();
		    		String path =  pict_path + "\\" + fname;
		    		part.write(path);
		    		SpotDAO i2Dao = new SpotDAO();
	        		i2Dao.insertimg(max,fname);
		    	}
		    }
		}


			SpotDAO i1Dao = new SpotDAO();
    		Integer max = i1Dao.selectid();
			/*String max = "1";
			StringBuilder sb = new StringBuilder();
	        for (Part xxx : request.getParts()) {
	            if (xxx.getName().equals("image")) {
	                String image = getFilename(xxx);
	                xxx.write(image);
	                sb.append(image).append("<br>");
	                SpotDAO i2Dao = new SpotDAO();
	        		i2Dao.insertimg(max,image);
	            }
	        }*/
	        //request.setAttribute("image", sb.toString());

        //ディスパッチ
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/map.jsp");
		dispatcher.forward(request, response);
    }

	private String getFilename(Part xxx) {
        for (String cd : xxx.getHeader("Content-Disposition").split(";")) {
            if (cd.trim().startsWith("filename")) {
                return cd.substring(cd.indexOf('=') + 1).trim()
                        .replace("\"", "");
            }
        }

        return null;
    }

}
