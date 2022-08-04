package interfaces;

import java.util.ArrayList;

import model.Apoderado;

public interface ApoderadoInterfaces {

	public int insertApoderado(Apoderado a);
	
	public int updateApoderado(Apoderado a);
	
	public int deleteApoderado(Apoderado a);
	
	public Apoderado searchApoderado(int a);
	
	ArrayList<Apoderado> listApoderado(int a);
}
