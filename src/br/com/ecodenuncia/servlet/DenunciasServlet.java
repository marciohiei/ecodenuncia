package br.com.ecodenuncia.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jettison.json.JSONException;

import com.google.gson.Gson;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.DaoManager;
import com.j256.ormlite.support.ConnectionSource;

import br.com.ecodenuncia.common.Connection;
import br.com.ecodenuncia.common.JsonUtils;
import br.com.ecodenuncia.models.Denuncia;

/**
 * Servlet implementation class DenunciasServlet
 */
@WebServlet("/denuncias.do")
public class DenunciasServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private  Dao<Denuncia, String> DeviceDao;
    private  Gson gson;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DenunciasServlet() {
        super();
        // TODO Auto-generated constructor stub
        Connection connection = new Connection();
	    ConnectionSource conn = connection.createConnection();
	    
	    try {
            DeviceDao = DaoManager.createDao(conn, Denuncia.class);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			List<Denuncia> lista = DeviceDao.queryForAll();
			
			
			response.getWriter().append(JsonUtils.denunciasToFeatureCollection(lista).toString());
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//.append(request.getContextPath());
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		System.out.println(request);
		
		try {
			DeviceDao.create(new Denuncia((String) request.getParameter("nome"),(String) request.getParameter("ponto"),
					(String) request.getParameter("menssagem"),(String) request.getParameter("email"),(String) request.getParameter("endereco")));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.getWriter().append("ok");
		
	}

}
