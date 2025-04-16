<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Login - Paradise Store</title>
    <link rel="stylesheet" href="estilos.css">
</head>
<body>

<h1 class="titulo-logo">INICIAR SESIÓN
    <div class="logo">
        <a href="index.jsp">
            <img src="fotos/e.png" alt="Logo">
        </a>
    </div>
</h1>

<form action="respuesta.jsp" method="post" class="card" style="max-width: 400px; margin: auto;">
    <input type="hidden" name="accion" value="login">
    
    <label>Usuario (Cédula):</label>
    <input type="text" name="usuario" required><br><br>

    <label>Contraseña:</label>
    <div class="password-container">
        <input type="password" name="contrasena" id="contrasena" required>
        <img src="iconos/ojoCerrado.png" id="ojo" class="eye-icon" onclick="togglePassword()" alt="Mostrar contraseña">
    </div>

    <br><br>
    <input type="submit" value="Ingresar">
    <input type="reset" value="Limpiar"><br><br>

    <p>¿Primera vez? <a href="registro.jsp">Regístrate aquí</a></p>
    
    <p> ¡Olvidaste tu contraseña? <a href="cambioClave.jsp">Recuperala aqui</a></p>
</form>

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

</body>
</html>
