<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- sentencias de import necesarias para jdbc-->
<%@ page import="com.arquitecturajava.DataBaseHelper"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>
<%
String isbn= request.getParameter("isbn");
String titulo= request.getParameter("titulo");
String categoria= request.getParameter("categoria");
//realizo la consulta usando el DBHelper y el codigo queda simplificado
String consultaSQL= "insert into Libros (isbn,titulo,categoria) values ";
consultaSQL+= "('" +isbn+ "','" +titulo + "','" +categoria+"')";
DataBaseHelper db= new DataBaseHelper();
int filas=db.modificarRegistro(consultaSQL);
response.sendRedirect("MostrarLibros.jsp");
%>
