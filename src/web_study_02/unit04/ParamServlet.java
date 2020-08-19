package web_study_02.unit04;

import java.io.IOException;
import java.util.Arrays;
import java.util.stream.Collectors;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ParamServlet")
public class ParamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String id = request.getParameter("id").trim();
			String pwd = request.getParameter("pwd").trim();
			int age = Integer.parseInt(request.getParameter("age").trim());
			String gender = request.getParameter("gender");
			String chk_mail = request.getParameter("chk_mail");
			String content = request.getParameter("content");
			String[] items = request.getParameterValues("item");
			String arrToItems = Arrays.stream(items).collect(Collectors.joining(" "));
			String job = request.getParameter("job");
			String[] interests = request.getParameterValues("interest");
			
			request.setAttribute("id", id);
			request.setAttribute("pwd", pwd);
			request.setAttribute("age", age);
			request.setAttribute("gender", gender);
			request.setAttribute("chk_mail", chk_mail);
			request.setAttribute("content", content);
			request.setAttribute("job", job);
			request.setAttribute("item", arrToItems);
			
			/*if (items == null) {
				request.setAttribute("item", "선택한 항목이 없습니다.");
			} else {
				String itemRes = "";
				for (String item : items) {
					itemRes += item + " ";
				}
				request.setAttribute("item", itemRes);
			}*/
			
			if (interests == null) {
				request.setAttribute("interest", "선택한 항목이 없습니다.");
			} else {
				String interestsRes = "";
				for (String interest : interests) {
					interestsRes += interest + " ";
				}
				request.setAttribute("interest", interestsRes);
			}
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("04_result.jsp");
			dispatcher.forward(request, response);
	}

}
