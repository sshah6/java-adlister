package model;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/pizza-order")
public class PizzaOrder extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("/pizza-order.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String size = request.getParameter("size");
        String thickCrust = request.getParameter("thickcrust");
        String thinCrust = request.getParameter("thincrust");
        String address = request.getParameter("address");

        PrintWriter print = response.getWriter();
        if(size != null){
            print.println("Size: " + size );
        }

        if(thickCrust != null){
            print.println("Crust: " + thickCrust);
        }

        if(thinCrust != null){
            print.println("Crust: " + thinCrust);
        }

        if(address != null){
            print.println("Address: " + address);
        }
    }
}




