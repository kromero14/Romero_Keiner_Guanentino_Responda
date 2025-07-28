<?php
    require "conexion.php";

    // Guardar la sesión por 30 minutos (1800 segundos)
    session_set_cookie_params(1800);
    // iniciar sesion para guardar los datos del usuario
    session_start();

    $usuario = $_POST['email'];
    $contraseña = $_POST['contraseña'];

    // Consulta para obtener email, nombre y contraseña
    $query = "SELECT email, nombre, contraseña FROM admin WHERE email = ?";
    $stmt = $conexion->prepare($query);
    $stmt->bind_param("s", $usuario);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($row = $result->fetch_assoc()) {
        // Si usas password_hash en el registro:
        if (password_verify($contraseña, $row['contraseña'])) {
            $_SESSION['username'] = $usuario;
            $_SESSION['nombre'] = $row['nombre'];
            header("location: ../home_admin.php");
            exit();
        } else {
            echo "Contraseña incorrecta.";
        }
    } else {
        if ($contraseña === $row['contraseña']) {
            $_SESSION['username'] = $usuario;
            $_SESSION['nombre'] = $row['nombre'];
            header("location: ../home_admin.php");
            exit();
        } else {
            echo "Contraseña incorrecta.";
        }
        echo "El usuario no existe, o hay un error en el nombre de usuario o la contraseña";
    }
?>
