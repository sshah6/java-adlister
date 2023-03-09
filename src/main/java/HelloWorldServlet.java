import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet("/hello")
public class HelloWorldServlet extends HttpServlet {

    //Var for counter
    public static int count = 0;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {

        //prints on the page when hello query is wirtten
        PrintWriter out = res.getWriter();
//        out.println("Hello World");

        //Writes Hello world, but of a query sent writes hello the query
//        String name = req.getParameter("name");
//        if(name == null){
//            out.println("<h1>Hello World</h1>");
//        }else{
//            out.println("<h1> Hello " + name +"</h1>");
//        }

        //Counter servlet and how to assign it bach to zero
        String reset = req.getParameter("reset");
        if(reset.equals("")){
            count = 0;
            out.println("<h1>" + count + "</h1>");
        }else{
            out.println("<h1>" + count + "</h1>");
            count++;
        }
    }
}
