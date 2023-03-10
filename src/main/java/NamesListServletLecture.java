import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebServlet("/names")
public class NamesListServletLecture extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<String> names = new ArrayList<>(Arrays.asList(
                "Alex",
                "Alan",
                "Bob"
        ));
        req.setAttribute("names", names);

        //The below method is linking servlet with jsp file to be viewed
        req.getRequestDispatcher("/names.jsp").forward(req, resp);
    }
}
