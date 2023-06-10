package com.flor.shopping;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "Rescue", value = "/rescue")
public class Rescue extends HttpServlet {

    DataBase db = DataBase.getInstance();

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setAttribute("listAnimals", db.getAllAnimalsInRescue());
        RequestDispatcher dispatcher = request.getRequestDispatcher("rescue.jsp");
        dispatcher.forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int animalId = Integer.parseInt(request.getParameter("animal_id_delete"));
        db.deleteAnimalInRescue(animalId);
        doGet(request, response);
    }
}
