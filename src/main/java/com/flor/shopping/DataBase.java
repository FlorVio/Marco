package com.flor.shopping;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DataBase {

    private static DataBase instance;

    private Connection con;

    private DataBase(){
        try{
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping, root, root");
        }catch (Exception e){
            con = null;
        }
    }

    public static synchronized DataBase getInstance() {
        if (instance == null) {
            instance = new DataBase();
        }
        return instance;
    }

    public ResultSet getAllAnimalsInCustody(){

        try{
            PreparedStatement ps = con.prepareStatement("SELECT * FROM custody");
            return ps.executeQuery();
        }catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public void saveAnimalCustody(){

        try{
            PreparedStatement ps = con.prepareStatement("INSERT * FROM custody");
            ResultSet rs = ps.executeQuery();
        }catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public void deleteAnimalRescue(){

        try{
            PreparedStatement ps = con.prepareStatement("SELECT * FROM rescue");
            ResultSet rs = ps.executeQuery();
        }catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
