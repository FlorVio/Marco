package com.flor.shopping;

import java.io.*;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "Custody", value = "/custody")
public class Custody extends HttpServlet {

    DataBase db = DataBase.getInstance();

    public void init() {
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //request.setAttribute("listAnimals", db.getAllAnimalsInCustody());
        response.sendRedirect(request.getContextPath() + "/custodiar.jsp");
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //db.saveAnimal(animal);
        doGet(request, response);
    }

    public void destroy() {
    }
}