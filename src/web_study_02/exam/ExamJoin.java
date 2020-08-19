package web_study_02.exam;

import java.io.IOException;
import java.util.Arrays;
import java.util.stream.Collectors;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ExamJoin")
public class ExamJoin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user_name = request.getParameter("user_name");
		int user_number1 = Integer.parseInt(request.getParameter("user_number1"));
		int user_number2 = Integer.parseInt(request.getParameter("user_number2"));
		String user_id = request.getParameter("user_id");
		String user_pwd = request.getParameter("user_pwd");
		String user_pwd_chk = request.getParameter("user_pwd_chk");
		String email_id = request.getParameter("email_id");
		String email_add = request.getParameter("email_add");
		String post_number = request.getParameter("post_number");
		String add1 = request.getParameter("add1");
		String add2 = request.getParameter("add2");
		String tel = request.getParameter("tel");
		String[] jobs = request.getParameterValues("job");
		String arrToJobs;
		if (jobs == null) {
			arrToJobs = "선택한 항목이 없습니다";
		} else {
			arrToJobs = Arrays.stream(jobs).collect(Collectors.joining(" "));
		}
		String chk_mail = request.getParameter("chk_mail");
		String[] interest = request.getParameterValues("interest");
		String arrToInterest;
		if (interest == null) {
			arrToInterest = "선택한 항목이 없습니다";
		} else {
			arrToInterest = Arrays.stream(interest).collect(Collectors.joining(" "));
		}
		
		
		request.setAttribute("user_name", user_name);
		request.setAttribute("user_number1", user_number1);
		request.setAttribute("user_number2", user_number2);
		request.setAttribute("user_id", user_id);
		request.setAttribute("user_pwd", user_pwd);
		request.setAttribute("email_id", email_id);
		request.setAttribute("email_add", email_add);
		request.setAttribute("post_number", post_number);
		request.setAttribute("add1", add1);
		request.setAttribute("add2", add2);
		request.setAttribute("tel", tel);
		request.setAttribute("job", arrToJobs);
		request.setAttribute("chk_mail", chk_mail);
		request.setAttribute("interest", arrToInterest);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("exam_join_result.jsp");
		dispatcher.forward(request, response);
	}

}
