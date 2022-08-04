package interfaces;
import java.util.ArrayList;
import model.Empleado;

public interface EmpleadoInterfaces {
	
	public int insertEmpleado(Empleado e);
	
	public int updateEmpleado(Empleado e);
	
	public int deleteEmpleado(Empleado e);
	
	public ArrayList<Empleado> listado(); 
}
