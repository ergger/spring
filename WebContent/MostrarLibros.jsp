<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="com.arquitectura.DataBaseHelper"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista de Libros</title>
</head>
<body>
<select name="categoria">
<option value="seleccionar">seleccionar</option>
<%
ResultSet rs=null;
try {
 String consultaSQL = "select distinct(categoria) from Libros";
 DataBaseHelper helper = new DataBaseHelper();
 rs=helper.seleccionarRegistros(consultaSQL);
 while(rs.next()) { %>
  <option value="<%=rs.getString("categoria")%>">
  <%=rs.getString("categoria")%></option>
  <% } 
%>
</select>
<br />
<%
ResultSet rs = null;
try {
 String consultaSQL = "select isbn,titulo,categoria from Libros";
 DataBaseHelper helper = new DataBaseHelper();
 rs = helper.seleccionarRegistros(consultaSQL);
 while (rs.next()) {
  %>
  <%=rs.getString("isbn")%>
  <%=rs.getString("titulo")%>
  <%=rs.getString("categoria")%>
  <br />
  <%
 }
} catch (SQLException e) {
 System.out.println("Error accediendo a la base de datos" + e.getMessage());
} finally {
 if (rs != null) {
  try {
   rs.close();
  } catch (SQLException e) {
   System.out.println("Error cerrando el resultset" + e.getMessage());
  }
 }
}
%>
<a href="FormularioInsertarLibro.jsp">Insertar Libro</a>
</body>
</html>
