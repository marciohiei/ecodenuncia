package br.com.ecodenuncia.models;

import java.util.Arrays;

public class Point {
	private String type = "Point";
	private Float[] coordinates;
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Float[] getCoordinates() {
		return coordinates;
	}
	public void setCoordinates(Float[] coordinates) {
		this.coordinates = coordinates;
	}
	@Override
	public String toString() {
		return "Point [type=" + type + ", coordinates=" + Arrays.toString(coordinates) + "]";
	}
	
	

}
