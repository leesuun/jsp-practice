package practice.calc_1;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalcServlet
 */

@WebServlet("/practice/calc_1/CalcServlet")
public class CalcServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		PrintWriter out = response.getWriter();
		response.setContentType("text/html; charset=UTF-8");
		String oper = request.getParameter("operation");
		int result = 0;
		int num1 = 0, num2 = 0;

		out.println("<html>");
		out.println("<body>");
		out.println("<h1>서블릿 계산기</h1>");
		out.println("</hr>");

		try {
			num1 = Integer.parseInt(request.getParameter("num1"));
			num2 = Integer.parseInt(request.getParameter("num2"));
		} catch (Exception e) {
			// TODO: handle exception
			out.println("error: " + e);
			out.println("<h2>숫자는 정수만 입력하세요!!!</h2>");
			out.println("</body>");
			out.println("</html>");
			return;
		}

		switch (oper) {
		case "+":
			result = (num1 + num2);
			break;
		case "-":
			result = (num1 - num2);
			break;
		case "*":
			result = (num1 * num2);
			break;
		case "/":
			try {
				result = (num1 / num2);
			} catch (ArithmeticException e) {
				// TODO: handle exception

				out.println("error: " + e);
				out.println("<h2>0으로 나눌수 없습니다</h2>");
				return;
			}
			break;

		}

		out.println("<h2>계산 결과:" + Integer.toString(num1) + oper.toString() + Integer.toString(num2) + "=" + result
				+ "</h2>");

		out.println("</body>");
		out.println("</html>");

		System.out.println(num1 + " " + num2 + " " + oper);

	}

}