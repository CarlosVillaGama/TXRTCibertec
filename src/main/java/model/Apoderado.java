package model;

public class Apoderado {
	private int codApo;
	private String desApo;
	private String nomApo;
	private String apeApo;
	private int dniApo;
	private int telApo;
	private String domApo;
	
	
	
	@Override
	public String toString() {
		return "Apoderado [codApo=" + codApo + ", desApo=" + desApo + ", nomApo=" + nomApo + ", apeApo=" + apeApo
				+ ", dniApo=" + dniApo + ", telApo=" + telApo + ", domApo=" + domApo + "]";
	}
	
		
	public int getCodApo() {
		
		return codApo;
	}
	public void setCodApo(int codApo) {
		this.codApo = codApo;
	}
	public String getDesApo() {
		return desApo;
	}
	public void setDesApo(String desApo) {
		this.desApo = desApo;
	}
	public String getNomApo() {
		return nomApo;
	}
	public void setNomApo(String nomApo) {
		this.nomApo = nomApo;
	}
	public String getApeApo() {
		return apeApo;
	}
	public void setApeApo(String apeApo) {
		this.apeApo = apeApo;
	}
	public int getDniApo() {
		return dniApo;
	}
	public void setDniApo(int dniApo) {
		this.dniApo = dniApo;
	}
	public int getTelApo() {
		return telApo;
	}
	public void setTelApo(int telApo) {
		this.telApo = telApo;
	}
	public String getDomApo() {
		return domApo;
	}
	public void setDomApo(String domApo) {
		this.domApo = domApo;
	}
	
}
