<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

<jsp:useBean id="member" class="useBean.Member" scope="page" >
    	<jsp:setProperty name="member" property="*"/>
</jsp:useBean>

<%
		if(useBean.JDB.delete(member)){
			session.invalidate();
			response.sendRedirect("/JSP_Eclipse/index.jsp");
		}
		else{
			response.sendRedirect("/JSP_Eclipse/index.jsp?p=member/deleteid.jsp?error");
		}
%>


