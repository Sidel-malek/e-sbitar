<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="navbar.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ajouter une maladie</title>
<style>
    body {
       
        background-color: #f1f1f1;
    
    }

    .main {
        
        max-width: 600px;
        margin: 0 auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .maladie-content {
        text-align: center;
    }

    .form-title {
        margin-bottom: 20px;
        color: #333;
    }

    .maladie-form .form-group {
        margin-bottom: 20px;
    }

    .maladie-form label {
        display: block;
        margin-bottom: 5px;
        color: #666;
    }

    .maladie-form input[type="text"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }

    .maladie-form .form-button {
        text-align: center;
    }

    .maladie-form .form-button input[type="submit"] {
        width: auto;
        padding: 10px 20px;
        background-color: #333;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    .maladie-image {
        text-align: center;
        margin-top: 20px;
    }

    .maladie-image .maladie-image-link {
        color: #333;
        text-decoration: none;
    }

    .maladie-image .maladie-image-link:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>


    <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
    <div class="main">
        <!-- Sign up form -->
        <section class="prestatire">
            <div class="container">
                <div class="maladie-content">
                    <div class="maladie-form">
                        <h2 class="form-title">Ajouter une Maladie</h2>
                        <form method="Post" action="prestatire" class="maladie-form"
                            id="maladie-form">
                            <div class="form-group">
                                <label for="maladie"><i
                                    class="zmdi zmdi-account material-icons-name"></i></label> <input
                                    type="text" name="maladie" id="maladie" placeholder="la Maladie" />
                            </div>
                            <div class="form-group">
                                <label for="symptome"><i class="zmdi zmdi-name"></i></label> <input
                                    type="text" name="symptome" id="symptome" placeholder="Ses Symptome" />
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="ajouter" id="ajouter"
                                    class="form-submit" value="Ajouter" />
                            </div>
                        </form>
                    </div>
                    <div class="maladie-image">
                        <a href="index.jsp" class="maladie-image-link">Retour</a>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link rel="stylesheet" href="alert/dist/sweetalter.css">
    <script type="text/javascript">
        var status = document.getElementById("status").value;
        if (status == "success") {
            swal("congrats", "Account Created Successfully", "success");
        }
    </script>
</body>
</html>