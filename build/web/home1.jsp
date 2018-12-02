<%-- 
    Document   : home1
    Created on : Dec 2, 2018, 9:50:57 PM
    Author     : vanshika
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Bus Management System</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            * {
                box-sizing: border-box;
            }
            .row{
                display: flex;
            }
            .column{
                flex: 50%;
                padding: 10px;
                height: 300px;
            }
        </style>
    </head>
        <body background="http://www.jakpost.travel/imgfiles/full/140/1406636/plain-wallpapers-full-hd.jpg" text="black" link="black" alink="green" vlink="salmon">
        <center><font size="5" face="Comic Sans MS" color="black"><b><u>Bus Management System</u></b></font>
        <nav style="text-align: right;">
            |   <a href="index.html"><font size=4 face="Comic Sans MS">  Log out </font></a>
        </nav><hr>
        
        <%String u=(String)request.getAttribute("student");%>
         <font size="6">
        <pre>
        <nav style="background-color: lavender">
            <a href="bus?username=<%=u%>&req=r"><b>Student Info</b></a>      <a href="bus?username=<%=u%>&req=i"><b>Bus Info</b></a>      <a href="bus?username=<%=u%>&req=f"><b>Fee Info</b></a>      <a href="feedback.html"><b>Feedback</b></a>      <a href="contact.html"><b>Contact Us</b></a> 
        </nav>
        </pre>
        </font>
        
        
            <div class="column">
                <pre>
      <img src="images1/bus1.jpg" height="500" width="1200">
                </pre>
            </div>
        </div>
        <br><br><br><br><br><br><br><br><br><br><br><br><br>
        
       <marquee width="40%" direction="right" height="30%" color="lavender">
1. Be nice to the bus driver. It’s a long way from school to home. 2. Keep your bus neat and clean. 
</marquee>
  </body>
        
    </body>
</html>

        
    </body>
</html>
