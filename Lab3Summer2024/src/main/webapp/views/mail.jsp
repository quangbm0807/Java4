<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Send Email</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <style>
        body {
            background-color: antiquewhite;
        }
    </style>
</head>
<body>
<%@ include file="../index.jsp" %>
    <div class="container mt-5">
        <h1>Send Email</h1>
        <% String message = (String) request.getAttribute("message"); %>
        <% if (message != null && !message.isEmpty()) { %>
            <div class="alert alert-primary" role="alert">
                <%= message %>
            </div>
        <% } %>
        <form action="mail" method="post" enctype="multipart/form-data">
            <div class="mb-3">
                <label for="to" class="form-label">To:</label>
                <input type="email" class="form-control" id="to" name="to" placeholder="Enter recipient's email" required>
            </div>
            <div class="mb-3">
                <label for="subject" class="form-label">Subject:</label>
                <input type="text" class="form-control" id="subject" name="subject" placeholder="Enter email subject" required>
            </div>
            <div class="mb-3">
                <label for="message" class="form-label">Message:</label>
                <textarea class="form-control" id="message" name="message" rows="4" placeholder="Enter email body" required></textarea>
            </div>
            <div class="mb-3">
                <label for="photo_file" class="form-label">Choose file</label>
                <input class="form-control" type="file" id="photo_file" name="file">
            </div>
            <button type="submit" class="btn btn-primary">Send</button>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
