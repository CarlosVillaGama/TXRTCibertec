package mantenimiento;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import interfaces.UsuarioInterfaces;
import model.Usuario;
import utils.MySQLConexion;

public class GestionUsuario implements UsuarioInterfaces {

	@Override
	public int insertUsuario(Usuario u) {
		int usu = 0;
		Connection con = null;
		PreparedStatement pst = null;

		try {
			con = MySQLConexion.getConexion();

			String sql = "{CALL SP_INSERTUSUARIO(?,?,?,?,?,?)}";
			pst = con.prepareStatement(sql);
			
			pst.setInt(1, u.getcodUsu());
			pst.setString(2, u.getnomUsu());
			pst.setString(3, u.getpasUsu());
			pst.setInt(4, u.getrolUsu());
			pst.setString(5, u.getcodEmp());
			pst.setInt(6, u.getestId());

			usu = pst.executeUpdate();

		} catch (Exception e) {
			System.out.println("Error al Registrar el Usuario " + e.getMessage());
		} finally {
			MySQLConexion.closeConexion(con);
		}

		return usu;
	}

	@Override
	public int updateUsuario(Usuario u) {
		int usu = 0;

		Connection con = null;
		PreparedStatement pst = null;

		try {

			con = MySQLConexion.getConexion();

			String sql = "{CALL SP_UPDATEUSUARIO(?,?,?,?,?,?)}";
			pst = con.prepareStatement(sql);

			pst.setInt(1, u.getcodUsu());
			pst.setString(2, u.getnomUsu());
			pst.setString(3, u.getpasUsu());
			pst.setInt(4, u.getrolUsu());
			pst.setString(5, u.getcodEmp());
			pst.setInt(6, u.getestId());

			usu = pst.executeUpdate();

		} catch (Exception e) {
			System.out.println("Error al Actualizar el Usuario " + e.getMessage());
		} finally {
			MySQLConexion.closeConexion(con);
		}

		return usu;
	}

	@Override
	public int deleteUsuario(int usuario) {
		int usu = 0;
		Connection con = null;
		PreparedStatement pst = null;

		try {

			con = MySQLConexion.getConexion();

			String sql = "{CALL SP_DELETEUSUARIO(?)}";
			pst = con.prepareStatement(sql);

			pst.setInt(1, usuario);

			usu = pst.executeUpdate();

		} catch (Exception e) {
			System.out.println("Error al Eliminar el Usuario " + e.getMessage());
		} finally {
			MySQLConexion.closeConexion(con);
		}

		return usu;
	}

	@Override
	public Usuario searchUsuario(int u) {

		Usuario usu = null;
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;

		try {

			con = MySQLConexion.getConexion();

			String sql = "{CALL SP_SEARCHUSUARIO(?)}";
			pst = con.prepareStatement(sql);

			pst.setInt(1, u);

			rs = pst.executeQuery();

			if (rs.next()) {
				usu = new Usuario();
				
				usu.setcodUsu(rs.getInt(1));
				usu.setnomUsu(rs.getString(2));
				usu.setpasUsu(rs.getString(3));
				usu.setrolUsu(rs.getInt(4));
				usu.setcodEmp(rs.getString(5));
				usu.setestId(rs.getInt(6));

			}

		} catch (Exception e) {
			System.out.println("Error al Buscar un Usuario " + e.getMessage());
		} finally {
			MySQLConexion.closeConexion(con);
		}

		return usu;
	}

	@Override
	public ArrayList<Usuario> listUsuario() {
		ArrayList<Usuario> lista = new ArrayList<Usuario>();
		Usuario usu ;
		
		Connection con= null;
		PreparedStatement pst=null;
		ResultSet res = null;
		
		
		try {
				
			con= MySQLConexion.getConexion();
			String sql = "select * from usuarios";
			pst = con.prepareStatement(sql);
			
			res = pst.executeQuery();
			
			while (res.next()) {
				
				usu= new Usuario();
				
				usu.setcodUsu(res.getInt(1));
				usu.setnomUsu(res.getString(2));
				usu.setpasUsu(res.getString(3));
				usu.setrolUsu(res.getInt(4));
				usu.setcodEmp(res.getString(5));
				usu.setestId(res.getInt(6));
				
				
				lista.add(usu);
			}
			
			
			
		} catch (Exception e) {
			System.out.println("Error al Listar el Usuario "+e.getMessage());
		}finally {
			MySQLConexion.closeConexion(con);
		}
		
		return lista;
	}

	@Override
	public Usuario loginUsuario(String usuario, String clave) {
		// TODO Auto-generated method stub
		return null;
	}

}