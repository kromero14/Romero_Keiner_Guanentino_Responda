<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>registrar</title>
</head>
<body>
    <center>
        <h1> Aquí podras registrar nuevos usuarios </h1>
        <br><br>
        <form action="modelo/registro.php" method="POST">
                <label>Tipo de usuario:</label>
                <select name="tipo_usuario" required>
                    <option value="admin">Administrador</option>
                    <option value="docente">Docente</option>
                    <option value="digitador">Digitador</option>
                </select>
                <br><br>
            <label>Nombre:</label>
            <input type="text" name="nombre" required>
            <br><br>
            <label>Email:</label>
            <input type="email" name="email" required>
            <br><br>
            <label>Contraseña:</label>
            <input type="password" name="password" required>
            <br><br>
            <button type="submit">Registrarse</button>
        </form>
        <br><br>
        <a href="home_admin.php">
            <button type="submit">Volver al inicio</button>
        </a>
    </center>
</body>
</html>