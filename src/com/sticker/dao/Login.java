package com.sticker.dao;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.sticker.dto.MemberDTO;


@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void init(ServletConfig config) throws ServletException {
		DBConnecter dbc = new DBConnecter();
		dbc.getConnection();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MemberDAO mj = new MemberDAO();
		MemberDTO mDTO = new MemberDTO();
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; utf-8");
		
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		mDTO.setId(id);
		mDTO.setPassword(password);
		
		boolean result = mj.login(id, password);
		
		if(result) {
			HttpSession session = request.getSession();
			
			session.setAttribute("Logon", true);
			session.setAttribute("loginId", id);
			session.setAttribute("loginPassword", password);
			if(mDTO.getId().equals(id) && mDTO.getPassword().equals(password)) {
				response.sendRedirect("index.jsp");
			}
		}else {
			response.sendRedirect("login.jsp");
		}
		
	}
}