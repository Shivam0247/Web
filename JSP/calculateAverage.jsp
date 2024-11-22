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














<%@ page import="java.sql.*" %>
<%
String Maths = request.getParameter("maths");
String Science = request.getParameter("science");
String English = request.getParameter("english");

int MathsInt = Integer.parseInt(Maths);
int ScienceInt = Integer.parseInt(Science);
int EnglishInt = Integer.parseInt(English);

try {
    // Load the MySQL JDBC Driver
    Class.forName("com.mysql.jdbc.Driver");
    
    // Establish connection
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/WT", "root", "");
    
    // Prepare SQL statement
    PreparedStatement ps = conn.prepareStatement("INSERT INTO user(Name, Email, Password) VALUES (?, ?, ?)");
    ps.setString(1, Maths);
    ps.setString(2, Science);
    ps.setString(3, English);

    // Execute update
    int x = ps.executeUpdate();
    
    if (x > 0) {
        out.println("Insertion successful");
    } else {
        out.println("Insertion failed");
    }

    // Close the connection
    ps.close();
    conn.close();
} catch (Exception e) {
    out.println("Error: " + e);
}
%>
