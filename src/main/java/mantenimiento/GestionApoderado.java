package mantenimiento;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import interfaces.ApoderadoInterfaces;
import model.Apoderado;
import utils.MySQLConexion;

public class GestionApoderado implements ApoderadoInterfaces{

	@Override
	public int insertApoderado(Apoderado a) {
		int apo = 0;
		Connection con = null ;
		PreparedStatement pst = null ;
		
		try {
			
			con = MySQLConexion.getConexion();
			
			String sql = "{CALL SP_INSERTAPODERADO(null,?,?,?,?,?,?)}";
			pst = con.prepareStatement(sql);
			
			pst.setString(1, a.getDesApo());
			pst.setString(2, a.getNomApo());
			pst.setString(3, a.getApeApo());
			pst.setInt(4, a.getDniApo());
			pst.setInt(5, a.getTelApo());
			pst.setString(6, a.getDomApo());
			
			apo = pst.executeUpdate();
			
			
		} catch (Exception e) {
			System.out.println("Error al Registrar el apoderado "+e.getMessage());
		}finally {
			MySQLConexion.closeConexion(con);
		}
		
		return apo;
	}

	@Override
	public int updateApoderado(Apoderado a) {
		int apo = 0;

		Connection con = null ;
		PreparedStatement pst = null ;
		
		try {
			
			con = MySQLConexion.getConexion();
			
			String sql = "{CALL SP_UPDATEAPODERADO(?,?,?,?,?,?,?)}";
			pst = con.prepareStatement(sql);
			
			pst.setInt(1,a.getCodApo());
			pst.setString(2, a.getDesApo());
			pst.setString(3, a.getNomApo());
			pst.setString(4, a.getApeApo());
			pst.setInt(5, a.getDniApo());
			pst.setInt(6, a.getTelApo());
			pst.setString(7, a.getDomApo());
			
			apo = pst.executeUpdate();
			
			
		} catch (Exception e) {
			System.out.println("Error al Actualizar el apoderado "+e.getMessage());
		}finally {
			MySQLConexion.closeConexion(con);
		}
		
		return apo;
	}

	@Override
	public int deleteApoderado(Apoderado a) {
		int apo = 0;
		Connection con = null ;
		PreparedStatement pst = null ;
		
		try {
			
			con = MySQLConexion.getConexion();
			
			String sql = "{CALL SP_DELETEAPODERADO(?)}";
			pst = con.prepareStatement(sql);
			
			pst.setString(1, a.getDesApo());
			
			apo = pst.executeUpdate();
			
			
		} catch (Exception e) {
			System.out.println("Error al Eliminar el apoderado "+e.getMessage());
		}finally {
			MySQLConexion.closeConexion(con);
		}
		
		
		return apo;
	}

	@Override
	public Apoderado searchApoderado(int a) {
		
		Apoderado apo = null;
		Connection con = null ;
		PreparedStatement pst = null ;
		ResultSet rs = null;
		
		try {
			
			con = MySQLConexion.getConexion();
			
			String sql = "{CALL SP_SEARCHAPODERADO(?)}";
			pst = con.prepareStatement(sql);
			
			pst.setInt(1,a);
			
			rs = pst.executeQuery();
			
			if (rs.next()) {
				 apo = new Apoderado();
				apo.setCodApo(rs.getInt(1));
				apo.setDesApo(rs.getString(2));
				apo.setNomApo(rs.getString(3));
				apo.setApeApo(rs.getString(4));
				apo.setDniApo(rs.getInt(5));
				apo.setTelApo(rs.getInt(6));
				apo.setDomApo(rs.getString(7));
			}
			
			
			
		} catch (Exception e) {
			System.out.println("Error al Buscar un apoderado "+e.getMessage());
		}finally {
			MySQLConexion.closeConexion(con);
		}
		
		return apo ;
	}

	@Override
	public ArrayList<Apoderado> listApoderado(int a) {
		// TODO Auto-generated method stub
		return null;
	}

}
