import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class SubmitServlet extends HttpServlet {
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String name = request.getParameter("name");
    String email = request.getParameter("email");

    response.setContentType("text/html");
    PrintWriter out = response.getWriter();
    out.println("<html>");
    out.println("<head>");
    out.println("<title>Form Submission Result</title>");
    out.println("</head>");
    out.println("<body>");
    out.println("<h1>Form Submission Result</h1>");
    out.println("<p>Name: " + name + "</p>");
    out.println("<p>Email: " + email + "</p>");
    out.println("</body>");
    out.println("</html>");
  }
}
