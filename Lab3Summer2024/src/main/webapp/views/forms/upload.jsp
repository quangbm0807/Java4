<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upload</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <style>
        body {
            background-color: antiquewhite;
        }
    </style>
</head>

<body>
<%@ include file="../../index.jsp" %>
    <div class="container mt-5">
        <h2>Upload Form</h2>
        <form action="upload" method="post" enctype="multipart/form-data">
            <div class="mb-3">
                <label for="docUpload" class="form-label">Document:</label>
                <input class="form-control" type="file" name="doc_file" accept=".pdf,.doc,.docx">
            </div>
            <div class="mb-3">
                <label for="imageUpload" class="form-label">Image:</label>
                <input class="form-control" type="file" name="photo_file" accept=".jpg,.jpeg,.png">
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0-alpha1/js/bootstrap.bundle.min.js"></script>
</body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
</body>

</html>