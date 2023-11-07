<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
          crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <h2 class="text-center fs-1 my-5">Welcome to Register Page !!!</h2>
    <div class="row justify-content-center align-items-center">
        <form class="p-5 bg-light rounded w-50" action="hello" method="post">
            <div class="mb-3">
                <label for="firstname" class="form-label">FirstName:</label>
                <input type="text" class="form-control" id="firstname" name="firstname" required>
            </div>
            <div class="mb-3">
                <label for="lastname" class="form-label">LastName:</label>
                <input type="text" class="form-control" id="lastname" name="lastname" required>
            </div>
            <div class="mb-3">
                <label for="sports" class="form-label">Sports:</label><br>
                <input type="checkbox" name="sports" value="cricket">Cricket
                <input type="checkbox" name="sports" value="football">Football
                <input type="checkbox" name="sports" value="tabletennis">TableTennis
                <input type="checkbox" name="sports" value="caromboard">Carom Board
            </div>
            <div class="mb-3">
                <label class="form-label">Gender:</label><br>
                <input type="radio" name="gender" value="Male">Male
                <input type="radio" name="gender" value="Female">Female
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email:</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>
            <div class="mb-3">
                <label for="username" class="form-label">Username:</label>
                <input type="text" class="form-control" id="username" name="username" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password:</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>
            <% if (request.getAttribute("error") != null) { %>
                <p class="text-danger">Invalid Credentials!!!</p>
            <% } %>
            <button class="btn btn-warning" type="submit">Register</button>
        </form>
    </div>
</div>
</body>
</html>
