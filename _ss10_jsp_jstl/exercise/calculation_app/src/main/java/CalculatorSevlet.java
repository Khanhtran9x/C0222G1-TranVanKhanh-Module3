import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CalculatorSevlet", value = "/calculate")
public class CalculatorSevlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           double firstOperand = Double.parseDouble(request.getParameter("firstOperand"));
           double secondOperand = Double.parseDouble(request.getParameter("secondOperand"));
           String operator = request.getParameter("operator");
           double operate;
           String result;

           switch (operator){
               case "Addition":
                   operate = firstOperand + secondOperand;
                   result = Double.toString(operate);
                   break;
               case "Subtraction":
                   operate = firstOperand - secondOperand;
                   result = Double.toString(operate);
                   break;
               case "Multiple":
                   operate = firstOperand * secondOperand;
                   result = Double.toString(operate);
                   break;
               case "Division":
                   if (secondOperand == 0){
                       result = "You can not divide by 0";
                       break;
                   } else {
                       operate = firstOperand / secondOperand;
                       result = Double.toString(operate);
                       break;
                   }
               default:
                   throw new IllegalStateException("Unexpected value: " + operator);
           }

        request.setAttribute("firstOperand", firstOperand);
        request.setAttribute("secondOperand", secondOperand);
        request.setAttribute("operator", operator);
        request.setAttribute("result", result);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
