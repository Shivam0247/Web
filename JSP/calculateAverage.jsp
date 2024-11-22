<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ page import="java.util.*" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Average Marks</title>
        </head>

        <body>
            <h1>Your Average Marks</h1>

            <% String mathsStr=request.getParameter("maths"); String scienceStr=request.getParameter("science"); String
                englishStr=request.getParameter("english"); int maths=Integer.parseInt(mathsStr); int
                science=Integer.parseInt(scienceStr); int english=Integer.parseInt(englishStr); double average=(maths +
                science + english) / 3.0; %>
                <p>Maths: <%= maths %>
                </p>
                <p>Science: <%= science %>
                </p>
                <p>English: <%= english %>
                </p>

                <h2>Average Marks: <%= String.format("%.2f", average) %>
                </h2>
        </body>

        </html>