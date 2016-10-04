package br.com.ecodenuncia.common;

import com.j256.ormlite.db.PostgresDatabaseType;
import com.j256.ormlite.jdbc.JdbcConnectionSource;
import com.j256.ormlite.support.ConnectionSource;

import javax.swing.*;
import java.awt.*;

import java.sql.SQLException;


public class Connection {

    private String databaseUrl;
    private ConnectionSource connectionSource;
    private String user;
    private String pass;
    private String host;
    private String port;
    private String name;


    public Connection() {
        getDefaultProperties();
    }

    public ConnectionSource createConnection() {

        databaseUrl = "jdbc:postgresql://" + host + ":" + port + "/" + name;

        System.out.println("Conectando: " + databaseUrl);

        try {
            connectionSource = new JdbcConnectionSource(databaseUrl);
            ((JdbcConnectionSource) connectionSource).setDatabaseType(new PostgresDatabaseType());
            ((JdbcConnectionSource) connectionSource).setUsername(user);
            ((JdbcConnectionSource) connectionSource).setPassword(pass);
        } catch (SQLException e) {
        	
        	System.out.println(e.getMessage());
            e.printStackTrace();
        	String message = "Erro nas configurações da conexão, O Aplicativo Será finalizado!";
            int input = JOptionPane.showOptionDialog(null, message, "Dialog", JOptionPane.OK_OPTION, JOptionPane.ERROR_MESSAGE, null, null, null);
            if (input == JOptionPane.OK_OPTION) {
                System.exit(0);
            }
        }

        return connectionSource;
    }

    

    

    private void getDefaultProperties() {
        
        this.name = "ecodenuncia";
        this.host = "localhost";
        this.port = "5432";
        this.user = "postgres";
        this.pass = "tomahank";
    }




}