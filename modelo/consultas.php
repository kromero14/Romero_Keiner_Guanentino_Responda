<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consultas</title>
</head>
<body>
    <h1>Consultas</h1>
    
    <?php
        echo 'Usuario: '.$nombre_usuario;
    ?>
    <hr>
    <a href="registrar_empleado.php">Registrar empleado</a>
    <hr>
    <h2>Consultas</h2>
    <a href="modelo/consulta_empleados.php">Empleados</a>
    <br>
    <a href="">Departamentos</a>
    <hr>
    <h2>Salir</h2>
    <a href="index.php">
        <button type = "submit">Volver al inicio</button>
        </a>
    
</body>
</html>