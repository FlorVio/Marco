package com.flor.shopping;

import com.flor.shopping.dtos.AnimalCustodyDto;
import com.flor.shopping.dtos.AnimalRescueDto;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DataBase {

    private static DataBase instance;

    private Connection con;

    private DataBase() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping", "root", "root");
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public static synchronized DataBase getInstance() {
        if (instance == null) {
            instance = new DataBase();
        }
        return instance;
    }

    public List<AnimalCustodyDto> getAllAnimalsInCustody() {
        List<AnimalCustodyDto> list = new ArrayList<>();
        try {
            PreparedStatement ps = con.prepareStatement("SELECT * FROM custody");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(
                        AnimalCustodyDto.builder()
                                .id(rs.getInt("id"))
                                .name(rs.getString("name"))
                                .raze(rs.getString("raze"))
                                .type(rs.getString("type"))
                                .owner(rs.getString("owner"))
                                .dni(rs.getString("dni"))
                                .build()
                );
            }
        } catch (Exception e) {
            System.out.println("=====" + e.getMessage());
            return List.of();
        }
        return list;
    }

    public void saveAnimalCustody(String animalName, String animalRaze, String animalType, String ownerName, String ownerDni) {
        /*
            Si te salta por ejemplo Unknown column '12312X' in 'where clause' es porque has metido
            el string sin mas hay que usar '' dentro de las "";

            Si metes un valor no correspondiente al enum salta un Data truncated for column 'type' at row 1 siendo la row
            donde se a producido el error.
         */
        final String INSERT_ANIMAL_QUERY = "INSERT into custody(name, raze, type, owner, dni) values(?,?,?,?,?)";
        try {
            PreparedStatement ps = con.prepareStatement(INSERT_ANIMAL_QUERY);
            ps.setString(1, animalName);
            ps.setString(2, animalRaze);
            ps.setString(3, animalType);
            ps.setString(4, ownerName);
            ps.setString(5, ownerDni);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public void deleteAnimalCustody(int animalId, String ownerDni) {
        final String DELETE_ANIMAL_QUERY = "DELETE FROM custody WHERE custody.id=? AND custody.dni like ?";
        try {
            PreparedStatement ps = con.prepareStatement(DELETE_ANIMAL_QUERY);
            ps.setInt(1, animalId);
            ps.setString(2, ownerDni);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public List<AnimalRescueDto> getAllAnimalsInRescue() {
        List<AnimalRescueDto> list = new ArrayList<>();
        try {
            PreparedStatement ps = con.prepareStatement("SELECT * FROM rescue");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(
                        AnimalRescueDto.builder()
                                .id(rs.getInt("id"))
                                .name(rs.getString("name"))
                                .raze(rs.getString("raze"))
                                .type(rs.getString("type"))
                                .bloodType(rs.getString("blood_type"))
                                .build()
                );
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return List.of();
        }
        return list;
    }

    public void deleteAnimalInRescue(int id) {
        final String DELETE_ANIMAL_RESCUE_QUERY = "DELETE FROM rescue WHERE rescue.id=?";
        try {
            PreparedStatement ps = con.prepareStatement(DELETE_ANIMAL_RESCUE_QUERY);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
