package com.example.quirk.servlets;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/getServlet",
            initParams = @WebInitParam(name="URL", value="https://www.weatherservice.com"))
public class GetServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletConfig config = getServletConfig();
        System.out.println(config.getInitParameter("URL"));

        ServletContext context = getServletContext();
        System.out.println(context.getInitParameter("dbURL"));

        String value = req.getParameter("name");
        String htmlResponse = "<html><h3>Welcome to the Servlets!</h3><html>";
        PrintWriter writer = resp.getWriter();
        writer.write(htmlResponse+ " " + value);
    }
}