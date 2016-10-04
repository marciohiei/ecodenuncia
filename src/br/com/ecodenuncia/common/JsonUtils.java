package br.com.ecodenuncia.common;

import java.util.List;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

import br.com.ecodenuncia.models.Denuncia;


public class JsonUtils {

	public static JSONObject denunciasToFeatureCollection(List<Denuncia> lista) throws JSONException{
		JSONObject oj = new JSONObject();
		JSONArray ar = new JSONArray();
		oj.put("type", "FeatureCollection");
		
		for(Denuncia den:lista){
		JSONObject item1oj = new JSONObject();
		
		item1oj.put("type", "Feature");
		
		//JSONObject geo1 = new JSONObject("{\"type\": \"Point\",\"coordinates\": [153.236112, -27.779627]}");
		//JSONObject prop1 = new JSONObject("{\"name\": \"Point\",\"description\": \"Point\"}");
		
		JSONObject geo1 = new JSONObject(den.getPoint());
		JSONObject prop1 = new JSONObject("{\"name\": \""+den.getNome()+"\",\"description\": \""+den.getNome()+"\"}");
		
		
		item1oj.put("geometry", geo1);
		item1oj.put("properties", prop1);
		
		ar.put(item1oj);}
		
		
		oj.put("features", ar);
		
		
		
		return oj;
		
	}
}
