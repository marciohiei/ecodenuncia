package br.com.ecodenuncia.models;

import java.sql.SQLException;
import java.util.List;

import com.google.gson.Gson;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.DaoManager;
import com.j256.ormlite.support.ConnectionSource;

import br.com.ecodenuncia.common.Connection;

public class teste {
	
	private static Dao<Denuncia, String> DeviceDao;
    private static Gson gson;
    

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Connection connection = new Connection();
	    ConnectionSource conn = connection.createConnection();
		
	    
	    try {
            DeviceDao = DaoManager.createDao(conn, Denuncia.class);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        
		
		
		
		

	}

}
