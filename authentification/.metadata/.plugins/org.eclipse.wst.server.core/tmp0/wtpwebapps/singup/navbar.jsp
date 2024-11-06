<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<div class="navbar">
    <h1 class="app-name"><a href="index.jsp" style="text-decoration: none; color: #ffffff;">e-Sbitar</a></h1>
    
    <ul class="nav-links">
        <li><a href="prestataire.jsp">Ajouter Une Maladie  | </a></li>
        <li><a href="${pageContext.request.contextPath}/maladies">Sant�</a></li>
    </ul>
</div>

<style>
    .navbar {
    
        background-color: #00CED1		;
        padding: 20px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-bottom : 20px;
    }
    
    .app-name {
        color: #ffffff;
        font-size: 24px;
        margin: 0;
        text-decoration: none;
        text-decoration-style: none;
        
    }
    
    .nav-links {
        list-style: none;
        margin: 0;
        padding: 0;
        display: flex;
    }
    
    .nav-links li {
        margin-left: 10px;
    }
    
    .nav-links li:first-child {
        margin-left: auto;
    }
    
    .nav-links li a {
        color: #ffffff;
        text-decoration: none;
    }
</style>