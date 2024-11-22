<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Enter Marks</title>
    </head>

    <body>
        <h1>Enter Your Marks</h1>
        <form action="calculateAverage.jsp" method="POST">
            <label for="maths">Maths:</label>
            <input type="number" id="maths" name="maths" required><br><br>

            <label for="science">Science:</label>
            <input type="number" id="science" name="science" required><br><br>

            <label for="english">English:</label>
            <input type="number" id="english" name="english" required><br><br>

            <input type="submit" value="Submit">
        </form>
    </body>

    </html>