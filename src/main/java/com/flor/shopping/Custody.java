package com.flor.shopping;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "Custody", value = "/custody")
public class Custody extends HttpServlet {
    DataBase db = DataBase.getInstance();

    public void init() {
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setAttribute("listAnimals", db.getAllAnimalsInCustody());
        RequestDispatcher dispatcher = request.getRequestDispatcher("custodiar.jsp");
        dispatcher.forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        if (Boolean.parseBoolean(request.getParameter("option"))) {
            String animalName = request.getParameter("animal_name_save");
            String animalType = request.getParameter("animal_type_save");
            String animalRaze = request.getParameter("animal_raze_save");
            String ownerName = request.getParameter("owner_name_save");
            String ownerDni = request.getParameter("owner_dni_save");
            db.saveAnimalCustody(animalName, animalRaze, animalType, ownerName, ownerDni);
        } else {
            int animalId = Integer.parseInt(request.getParameter("animal_id_delete"));
            String ownerDni = request.getParameter("owner_dni_delete");
            db.deleteAnimalCustody(animalId, ownerDni);
        }
        doGet(request, response);
    }

    public void destroy() {
    }
}