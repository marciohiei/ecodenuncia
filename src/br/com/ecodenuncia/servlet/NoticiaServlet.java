package br.com.ecodenuncia.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.google.gson.Gson;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.DaoManager;
import com.j256.ormlite.support.ConnectionSource;

import br.com.ecodenuncia.common.Connection;
import br.com.ecodenuncia.common.GsonHelper;
import br.com.ecodenuncia.common.JsonUtils;
import br.com.ecodenuncia.models.Noticia;

/**
 * Servlet implementation class NoticiaServlet
 */
@WebServlet("/noticia.do")
public class NoticiaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private  Dao<Noticia, String> noticiaDao;
    private  Gson gson;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticiaServlet() {
        super();
        // TODO Auto-generated constructor stub
        Connection connection = new Connection();
	    ConnectionSource conn = connection.createConnection();
	    
	    try {
            noticiaDao = DaoManager.createDao(conn, Noticia.class);
            gson = GsonHelper.create();
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
			List<Noticia> lista = noticiaDao.queryForAll();
			
			
			response.getWriter().append(gson.toJson(lista));
		} //.append(request.getContextPath());
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
		doGet(request, response);
	}

}
