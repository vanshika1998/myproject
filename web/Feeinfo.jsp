<%-- 
    Document   : MyNewJSP
    Created on : Oct 25, 2018, 2:16:23 PM
    Author     : vanshika
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.* , java.sql.*,project.Student" %>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
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
            table, td, th {
    border: 1px solid black;
}

table {
    border-collapse: collapse;
    width: 100%;
}

th {
    height: 50px;
}
        </style>
    </head>
    <body background="http://www.jakpost.travel/imgfiles/full/140/1406636/plain-wallpapers-full-hd.jpg" text="black" link="black" alink="green" vlink="salmon">
        <center><font size="5" face="Comic Sans MS" color="black"><b><u>Bus Management System</u></b></font>
        <nav style="text-align: right;">
            |   <a href="index.html"><font size=4 face="Comic Sans MS">  Log out </font></a>
        </nav><hr>
        
        <font size="6">
        <pre>
        <nav style="background-color: lavender">
            <a href="#"><b>Student Info</b></a>      <a href="#"><b>Bus Info</b></a>      <a href="fees.html"><b>Fee Info</b></a>      <a href="feedback.html"><b>Feedback</b></a>      <a href="contact.html"><b>Contact Us</b></a> 
        </nav>
        </pre>
        </font>
        <%ArrayList<String> al=(ArrayList<String>)request.getAttribute("student");%>
        <center><h1>Fee Details</h1></center>
<table style="width:100%">
    <tr>
    <th colspan="1"> Username</th>
    <th colspan="2"> Name</th>
    <th colspan="3"> Academic Fees</th>
    <th colspan="4"> Bus fees</th>
  </tr>
  <tr>
      <th colspan="1"><%= al.get(0)%></th>
      <th colspan="2"><%= al.get(1)%></th>
      <th colspan="3"><%= al.get(2)%></th>  
      <th colspan="4"><%= al.get(3)%></th>
  </tr>
</table>  <br><br><br><br>
            
        
       <marquee width="40%" direction="right" height="30%" color="lavender">
1. Be nice to the bus driver. It’s a long way from school to home. 2. Keep your bus neat and clean. 
</marquee>
    </body>
</html>
