<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- sentencias de import necesarias para jdbc-->
<%@ page import="com.arquitecturajava.DataBaseHelper"%>
<% @page import="com.arquitecturajava.Libro"%>
<%
String isbn= request.getParameter("isbn");
String titulo= request.getParameter("titulo");
String categoria= request.getParameter("categoria");
//realizo la consulta usando el DBHelper y el codigo queda simplificado
Libro.insertar(isbn,titulo,categoria);
response.sendRedirect("MostrarLibros.jsp");
%>
