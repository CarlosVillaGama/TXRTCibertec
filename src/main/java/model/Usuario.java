package model;

public class Usuario {
	private int codUsu;
	private String nomUsu;
	private String pasUsu;
	private int rolUsu;
	private String codEmp;
	private int estId;

	@Override
	public String toString() {
		return "Usuario [codUsu=" + codUsu + ", nomUsu=" + nomUsu + ", pasUsu=" + pasUsu + ", rolUsu=" + rolUsu
				+ ", codEmp=" + codEmp + ", estId=" + estId + "]";
	}
	
	//Metodos get y set
	
	public int getcodUsu() {
		return codUsu;
	}
	public void setcodUsu(int codUsu) {
		this.codUsu = codUsu;
	}
	
	public String getnomUsu() {
		return nomUsu;
	}
	public void setnomUsu(String nomUsu) {
		this.nomUsu = nomUsu;
	}
	
	public String getpasUsu() {
		return pasUsu;
	}
	public void setpasUsu(String pasUsu) {
		this.pasUsu = pasUsu;
	}
	
	public int getrolUsu() {
		return rolUsu;
	}
	public void setrolUsu(int rolUsu) {
		this.rolUsu = rolUsu;
	}
	
	public String getcodEmp() {
		return codEmp;
	}
	public void setcodEmp(String codEmp) {
		this.codEmp = codEmp;
	}
	
	public int getestId() {
		return estId;
	}
	public void setestId(int estId) {
		this.estId = estId;
	}
		
}
	