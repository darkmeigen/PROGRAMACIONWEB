<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registro - Paradise Store</title>
    <link rel="stylesheet" href="estilos.css">
</head>
<body>
<h1 class="titulo-logo">REGISTRO DE USUARIO</h1>

<div class="logo">
    <a href="index.jsp">
        <img src="fotos/e.png" alt="Logo">
    </a>
</div>

<form action="respuesta.jsp" method="post" enctype="multipart/form-data" class="card" style="max-width: 600px; margin: auto;">
    <input type="hidden" name="accion" value="registro">

    <label>Nombre:</label>
    <input type="text" name="txtNombre" required><br><br>

    <label>Cédula:</label>
    <input type="text" name="txtCedula" maxlength="10" required><br><br>
	<label>Correo Electronico:</label>
	<input type="text" name= "txtCorreo" maxlenght="10" requiered ><br><br>
    <label>Estado civil:</label>
    <select name="cmbEstadoCivil">
        <option value="Soltero">Soltero</option>
        <option value="Casado">Casado</option>
        <option value="Divorciado">Divorciado</option>
        <option value="Viudo">Viudo</option>
    </select><br><br>
	
    <label>Residencia:</label><br>
    <input type="radio" name="rdResidencia" value="Sur" required> Sur
    <input type="radio" name="rdResidencia" value="Norte"> Norte
    <input type="radio" name="rdResidencia" value="Centro"> Centro<br><br>
    
	<label>Hoja de vida pdf:</label>
	<input type="file" name="filePdf" accept=".pdf" requiered><br><br>
    <label>Foto de perfil:</label>
    <input type="file" name="fileFoto" accept=".jpg,.jpeg,.png" required><br><br>

    <label>Mes y año de nacimiento:</label>
    <input type="month" name="fecha" required><br><br>

    <label>Color favorito:</label>
    <input type="color" name="color"><br><br>
    
    
      <label>Contraseña:</label>
    <div class="password-container">
        <input type="password" name="txtcontra" id="contrasena" required>
        <img src="iconos/ojoCerrado.png" id="ojo" class="eye-icon" onclick="togglePassword()" alt="Mostrar contraseña">
    </div>
    
    <!-- cpnfirmar contraseña	 -->	
    
        <label>Confirmar Contraseña:</label>
    <input type="text" name= "txtcontraConf" maxlength="10" requiered><br><br>
    

    <input type="submit" value="Enviar">
    <input type="reset" value="Restablecer">
    
    <script>
function togglePassword() {
    const password = document.getElementById("contrasena");
    const eye = document.getElementById("ojo");
    if (password.type === "password") {
        password.type = "text";
        eye.src = "iconos/ojoAbierto.png";
    } else {
        password.type = "password";
        eye.src = "iconos/ojoCerrado.png";
    }
}

</script>
    
</form>
</body>
</html>
