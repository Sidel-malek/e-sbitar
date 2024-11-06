<jsp:include page="navbar.jsp" />

<!DOCTYPE html>
<html>
<head>
    <title>Health App - Diseases and Symptoms</title>
    <style>
        body {
       
         background-color: #f1f1f1;
    
      
            text-align: center;
        }
        
        .maladie2-image-link {
            display: inline-block;
            padding: 10px 20px;
            background-color: #f1f1f1;
            border: none;
            text-decoration: none;
            color: #333;
            font-size: 16px;
            cursor: pointer;
            margin-bottom: 10px;
        }

        .maladie2-image-link {
            background-color: #4CAF50;
            color: white;
        }
        
        .middle-image {
            margin-top: 50px;
        }
    </style>
</head>
<body>
 
    <img src="images/medecin-ordi-03-800.jpg" alt="Image" class="middle-image">
    <script>
        // JavaScript code for handling user role and displaying elements
        var userRole = "${pageContext.request.getAttribute('role')}";
        
        if (userRole === 'Patient') {
            document.getElementById("maladie-image").style.display = "none";
        }
    </script>
</body>
</html>