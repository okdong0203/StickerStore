package com.sticker.dao;
import java.sql.*;

import com.sticker.dto.MemberDTO;

public class MemberDAO {
	 
	//ID중복체크
	public boolean checkId(String id){
		boolean check=false;
		
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		String sql = "SELECT COUNT(ID) FROM MEMBER_TBL WHERE ID = ?";
		
		
		try {
			conn= DBConnecter.getConnection();
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, id);
			rs=pstm.executeQuery();
			
			rs.next();
			if(rs.getInt(1)==0) {
				check=true;
			}
		} catch (SQLException e) {
			System.out.println("오류발생!! 오류 : " + e);
		}finally {
			try {
				if(rs != null) {
					rs.close();
				}if(pstm != null) {
					pstm.close();
				}if(conn != null) {
					conn.close();
				}
			}catch(SQLException e) {
				System.out.println("요청하신 페이지를 찾을수 없습니다.");
				throw new RuntimeException();
			}
		}
		return check;
	}
	//로그인
	public boolean login(String id, String password) {
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		String sql = "SELECT COUNT(ID) FROM MEMBER_TBL WHERE ID=? AND PASSWORD=?";
		boolean check = false;
		
		try {
			conn = DBConnecter.getConnection();
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, id);
			pstm.setString(2, password);
			rs = pstm.executeQuery();
			
			rs.next();
			if(rs.getInt(1)==1) {
				check = true;
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) {
					rs.close();
				}if(pstm != null) {
					pstm.close();
				}if(conn != null) {
					conn.close();
				}
			}catch(SQLException e) {
				System.out.println("요청하신 페이지를 찾을수 없습니다.");
				throw new RuntimeException();
			}
		}
		return check;
	}
	
		//아이디찾기
		public String idFind(MemberDTO mDTO) {
			Connection conn = null;
			PreparedStatement pstm = null;
			ResultSet rs = null;
			String sql = "SELECT ID FROM MEMBER_TBL WHERE NAME=? AND EMAIL=? AND EMAIL2=?";
			String id = null;
			
			try {
				conn = DBConnecter.getConnection();
				pstm = conn.prepareStatement(sql);
				pstm.setString(1, mDTO.getName());
				pstm.setString(2, mDTO.getEmail());
				pstm.setString(3, mDTO.getEmail2());
				rs = pstm.executeQuery();
				
				if(rs.next()) {
					id = rs.getString("ID");
				}
				}catch(SQLException e) {
				e.printStackTrace();
			}finally {
				try {
					if(rs != null) {
						rs.close();
					}if(pstm != null) {
						pstm.close();
					}if(conn != null) {
						conn.close();
					}
				}catch(SQLException e) {
					System.out.println("요청하신 페이지를 찾을수 없습니다.");
					throw new RuntimeException();
				}
			}
			return id;
		}
		
		// 비밀번호 찾기
		public boolean passwordFind(String id, String name) {
			Connection conn = null;
			PreparedStatement pstm = null;
			ResultSet rs = null;
			boolean check = false;
			String sql = "SELECT PASSWORD FROM MEMBER_TBL WHERE ID=? AND NAME=?";
			
			try {
				conn = DBConnecter.getConnection();
				pstm = conn.prepareStatement(sql);
				pstm.setString(1, id);
				pstm.setString(2, name);
				rs = pstm.executeQuery();
				if(rs.next()) check=true;
				}catch(SQLException e) {
					System.out.println("요청하신 페이지를 찾을수 없습니다.");
			}finally {
				try {
					if(rs != null) {
						rs.close();
					}if(pstm != null) {
						pstm.close();
					}if(conn != null) {
						conn.close();
					}
				}catch(SQLException e) {
					System.out.println("요청하신 페이지를 찾을수 없습니다.");
					throw new RuntimeException();
				}
			}
			return check;
		}
		
		// 회원정보 불러오기
		public MemberDTO memberInfo(String id) {
			MemberDTO mDTO = null;
			Connection conn = null;
			PreparedStatement pstm = null;
			ResultSet rs = null;
			
			String sql = "SELECT * FROM MEMBER_TBL WHERE ID=? ";
			try {
				conn = DBConnecter.getConnection();
				pstm = conn.prepareStatement(sql);
				pstm.setString(1, id);
				rs = pstm.executeQuery();
				
				if(rs.next()) {
					mDTO=new MemberDTO();
					mDTO.setId(rs.getString("ID"));
					mDTO.setPassword(rs.getString("PASSWORD"));
					mDTO.setName(rs.getString("NAME"));
					mDTO.setGender(rs.getString("GENDER"));
					mDTO.setYear(rs.getInt("YEAR"));
					mDTO.setAddress(rs.getString("ADDRESS"));
					mDTO.setPhoneNum(rs.getInt("PHONENUM"));
					mDTO.setEmail(rs.getString("EMAIL"));
					mDTO.setEmail2(rs.getString("EMAIL2"));
					
				}
				}catch(SQLException e) {
					System.out.println("요청하신 페이지를 찾을수 없습니다.");
			}finally {
				try {
					if(rs != null) {
						rs.close();
					}if(pstm != null) {
						pstm.close();
					}if(conn != null) {
						conn.close();
					}
				}catch(SQLException e) {
					e.printStackTrace();
					throw new RuntimeException();
				}
			}
			return mDTO;
		}
			//회원정보 탈퇴
			public void deleteMember(String id) {
				Connection conn = null;
				PreparedStatement pstm = null;
				String sql = "DELETE FROM MEMBER_TBL WHERE ID=?";
				try {
					conn = DBConnecter.getConnection();
					pstm = conn.prepareStatement(sql);
					pstm.setString(1, id);
					pstm.executeUpdate();
				}catch(SQLException e) {
					e.printStackTrace();
				}finally {
					try {
						if(pstm != null) {
							pstm.close();
						}if(conn != null) {
							conn.close();
						}
					}catch(SQLException e) {
						System.out.println("요청하신 페이지를 찾을수 없습니다.");
						throw new RuntimeException();
				}
			}
			}	
			}
