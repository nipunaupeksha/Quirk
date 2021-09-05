package com.example.quirk.servlets;

import com.example.quirk.beans.User;
import com.example.quirk.dao.ApplicationDao;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/getProfileDetails")
public class ProfileServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //get the username from the session
        System.out.println("User name in profile servlet  :"+ request.getSession().getAttribute("username"));
        String username = (String)request.getSession().getAttribute("username");

        //call dao and get profile details
        ApplicationDao dao = new ApplicationDao();
        User user = dao.getProfileDetails(username);

        //store all information in request object
        request.setAttribute("user", user);

        //forward control to profile jsp
        request.getRequestDispatcher("./profile.jsp").forward(request, response);
    }
}
