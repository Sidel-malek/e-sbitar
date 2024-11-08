<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Liste des Maladies</title>
    <style>
        body {
             background-color: #f1f1f1;
    
        }
        h1 {
            text-align: center;
            color: #333;
            margin-top: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f5f5f5;
        }
        tr:hover {
            background-color: #f9f9f9;
        }
        /* Navbar styles */
        .navbar {
            background-color: #f5f5f5;
            padding: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .navbar-logo {
            font-size: 24px;
            font-weight: bold;
            text-decoration: none;
            color: #333;
        }
        .navbar-menu {
            display: flex;
        }
        .navbar-item {
            margin-left: 10px;
        }
        .navbar-item a {
            text-decoration: none;
            color: #333;
        }
    </style>
</head>
<body>
    <jsp:include page="navbar.jsp" />
    
    <h1>Liste des Maladies</h1>
    <table>
        <tr>
            <th>Nom</th>
            <th>Sympt�mes</th>
        </tr>
        <c:forEach items="${maladies}" var="maladie">
            <tr>
                <td>${maladie.nom}</td>
                <td>${maladie.symptome}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>