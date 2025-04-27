<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Respuestas correctas
    String[] correctas = {
        "Ecuador",
        "Paseo en bote",
        "Cotopaxi",
        "Sí",
        "Salcedo"
    };

    // Respuestas del usuario
    String[] respuestasUsuario = {
        request.getParameter("preg1"),
        request.getParameter("preg2"),
        request.getParameter("preg3"),
        request.getParameter("preg4"),
        request.getParameter("preg5")
    };

    // Calcular puntaje
    int puntaje = 0;
    for (int i = 0; i < correctas.length; i++) {
        if (respuestasUsuario[i] != null && respuestasUsuario[i].equalsIgnoreCase(correctas[i])) {
            puntaje += 2; // 2 puntos por respuesta correcta
        }
    }
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Resultado de Evaluación</title>
    <link rel="stylesheet" href="estilos/estilos.css">
</head>
<body>
<header>
    <h1>Resultado de tu Evaluación</h1>
</header>
<main>
    <h2>Puntaje obtenido: <%= puntaje %> / 10</h2>

    <p>¡Gracias por participar! 🏆</p>

    <a href="index.jsp">Volver al inicio</a>
</main>
<footer>
    <p>&copy; 2025 - Mario Alexander Salazar Serna</p>
</footer>
</body>
</html>
