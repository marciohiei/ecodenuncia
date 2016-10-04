package br.com.ecodenuncia.models;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;

@DatabaseTable(tableName = "ecodenuncias.vdenuncias")
public class Denuncia  {
	@DatabaseField(generatedId = false)
	private int id;
	@DatabaseField
	private String nome;
	@DatabaseField
	private String ponto;
	@DatabaseField
	private String descricao;
	@DatabaseField
	private String email;
	@DatabaseField
	private String endereco;
	
	public Denuncia(){
		
	}
	
	public Denuncia(String nome,String ponto,String descricao,String email,String endereco){
		this.nome = nome;
		this.ponto = ponto;
		this.descricao = descricao;
		this.email = email;
		this.endereco = endereco;
		
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getPoint() {
		return ponto;
	}
	public void setPoint(String point) {
		this.ponto = point;
	}

	public String getPonto() {
		return ponto;
	}

	public void setPonto(String ponto) {
		this.ponto = ponto;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	

}
