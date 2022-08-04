package model;

public class Empleado {
	
	private int idEmple;
	private String codEmp;
	private String nomEmp;
	private String apeEmp;
	private int docEmp;
	private int telEmp;
	private String dirEmp;
	private int edadEmp;
	private int estadoEmp;
	
		
	@Override
	public String toString() {
		return "Empleado [idEmple=" + idEmple + ", codEmp=" + codEmp + ", nomEmp=" + nomEmp + ", apeEmp=" + apeEmp
				+ ", docEmp=" + docEmp + ", telEmp=" + telEmp + ", dirEmp=" + dirEmp + ", edadEmp=" + edadEmp
				+ ", estadoEmp=" + estadoEmp + "]";
	}
	
	
	// Metodos de acceso Set/Get
	
	public int getIdEmple() {
		return idEmple;
	}
	public void setIdEmple(int idEmple) {
		this.idEmple = idEmple;
	}
	public String getCodEmp() {
		return codEmp;
	}
	public void setCodEmp(String codEmp) {
		this.codEmp = codEmp;
	}
	public String getNomEmp() {
		return nomEmp;
	}
	public void setNomEmp(String nomEmp) {
		this.nomEmp = nomEmp;
	}
	public String getApeEmp() {
		return apeEmp;
	}
	public void setApeEmp(String apeEmp) {
		this.apeEmp = apeEmp;
	}
	public int getDocEmp() {
		return docEmp;
	}
	public void setDocEmp(int docEmp) {
		this.docEmp = docEmp;
	}
	public int getTelEmp() {
		return telEmp;
	}
	public void setTelEmp(int telEmp) {
		this.telEmp = telEmp;
	}
	public String getDirEmp() {
		return dirEmp;
	}
	public void setDirEmp(String dirEmp) {
		this.dirEmp = dirEmp;
	}
	public int getEdadEmp() {
		return edadEmp;
	}
	public void setEdadEmp(int edadEmp) {
		this.edadEmp = edadEmp;
	}
	public int getEstadoEmp() {
		return estadoEmp;
	}
	public void setEstadoEmp(int estadoEmp) {
		this.estadoEmp = estadoEmp;
	}
	
	

}
