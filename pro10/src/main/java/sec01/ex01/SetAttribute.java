package sec01.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SetAttribute
 */
@WebServlet("/set")
public class SetAttribute extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public SetAttribute() {
        // TODO Auto-generated constructor stub
    }
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	resp.setContentType("text/html;charset=utf-8");
    	PrintWriter out = resp.getWriter();
    	String ctxMesg = "context에 바인딩 됩니다.";
    	String sesMesg = "session에 바인딩 됩니다.";
    	String reqMesg = "request에 바인딩 됩니다";
    	
    	ServletContext ctx = getServletContext();
    	HttpSession session = req.getSession();
    	ctx.setAttribute("context", ctxMesg);
    	ctx.setAttribute("session", sesMesg);
    	ctx.setAttribute("request", reqMesg);
    	out.print("바인딩을 수행합니다.");
    }

}
