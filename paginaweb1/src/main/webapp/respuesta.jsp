<%@ page import="java.io.*, javax.servlet.*, javax.servlet.http.*, javax.servlet.annotation.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="javax.servlet.http.Part" %>

<%
request.setCharacterEncoding("UTF-8");

String accion = request.getParameter("accion");
// yo le hicecon cedula para agilizar las cosas pero aja
if ("login".equals(accion)) {
    String usuario = request.getParameter("usuario");
    String contrasena = request.getParameter("contrasena");

    // solo es una prueba para saber si ingresaron bien
    if (usuario != null && usuario.equals(contrasena)) {
%>
        <h2 class="titulo-logo">USUARIO INGRESADO  <%= usuario %></h2>
        <p><a href="index.jsp">REGRESAR AL HOME</a></p>
<%
    } else {
%>
        <h2 class="titulo-logo">Credenciales incorrectas</h2>
        <p><a href="login.jsp">Intentar de nuevo</a></p>
<%
    }

    
    
} else if ("registro".equals(accion)) {
	
	//para el pdf
	
	Part pdf= request.getPart("filePdf");
	String nombrePdf= pdf.getSubmittedFileName();
	
    // Procesar multipart/form-data para subir archivos
    Part foto = request.getPart("fileFoto");
    String nombreFoto = foto.getSubmittedFileName();

    // Guardar la imagen en la carpeta fotos del proyecto
    String rutaFotos = application.getRealPath("/") + "fotos/";
    File directorio = new File(rutaFotos);
    if (!directorio.exists()) directorio.mkdirs();
    foto.write(rutaFotos + nombreFoto);

    // Obtener otros datos del formulario
    String nombre = request.getParameter("txtNombre");
    String cedula = request.getParameter("txtCedula");
    String correo= request.getParameter("txtCorreo");
    String estadoCivil = request.getParameter("cmbEstadoCivil");
    String residencia = request.getParameter("rdResidencia");
    String fecha = request.getParameter("fecha");
    String color = request.getParameter("color");
    
    String contra = request.getParameter("txtcontra");
    String Ccontra = request.getParameter("txtcontraConf");
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Datos Registrados</title>
    <link rel="stylesheet" href="estilos.css">
</head>
<body>
    <h2 class="titulo-logo">Datos Registrados</h2>
    <div class="card" style="max-width: 500px; margin:auto;">
        <p><strong>Nombre:</strong> <%= nombre %></p>
        <p><strong>Cédula:</strong> <%= cedula %></p>
        <p><strong>Correo:</strong> <%= correo %></p>
        <p><strong>Estado civil:</strong> <%= estadoCivil %></p>
        <p><strong>Residencia:</strong> <%= residencia %></p>
        <p><strong>Mes y año de nacimiento:</strong> <%= fecha %></p>
        <p><font color="<%=color%>">Este es tu color favorito</font></p>
        <p>Foto subida:</p>
        <img src="fotos/<%= nombreFoto %>" width="150" alt="Foto del usuario"><br><br>
        <p><a href="login.jsp">Volver al login</a></p>
    </div>
</body>
</html>
<%
}
%>
