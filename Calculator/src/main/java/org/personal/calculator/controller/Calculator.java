package org.personal.calculator.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Calculator" , urlPatterns = {"/calculate"})
public class Calculator extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String display = req.getParameter("display");
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("./");
        Calculation calculate = new Calculation();

        String prefix = calculate.infixToPreFix(display).toString();

        Double evaluatePrefix = calculate.evaluatePrefix(prefix);
        req.setAttribute("result" , evaluatePrefix);
        requestDispatcher.forward(req,resp);
    }
}
