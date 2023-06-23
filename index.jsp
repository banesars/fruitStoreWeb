<%--
LAB FRUITSTOREWEB
    Document   : index
    Created on : Jun 22, 2023, 2:23:30 PM
    Author     : 16125
--%>

<%@page language="java" contentType="text/html" %>

<html>
       <style type="text/css">
            body {
                background-color: lightblue;
                margin-left: 10%;
                margin-right: 10%;
                border: 10px dashed whitesmoke;
                padding: 10px 10px 10px 10px;
                font-family: sans-serif;
            }
            </style>

            <img style="float: right;" src="fruitstoreweb.jpg" width="300"/>
            
        <h2>Welcome to the FruitStore! </h2>
        <p>We deliver top quality fresh fruit directly to your home.</p>
        <!-- us this JAVA bean to show users their current time zone time. -->
        <jsp:useBean id="clock" class="java.util.Date" />
   
        <% if (clock.getHours() < 12) { %>
        Good morning! 
        <% } else if (clock.getHours() < 17) {  %>
        Good day!
        <% } else { %>
        Good evening!
        <% } %>
        
        <h3>Choose your fruit(s):</h3>
        <form action ="index.jsp">
            <input type="checkbox" name="fruits" value="Apple">Apple<br><!-- comment -->
            <input type="checkbox" name="fruits" value="Banana">Banana<br><!-- comment -->
             <input type="checkbox" name="fruits" value="Orange">Orange<br>
            <input type="checkbox" name="fruits" value="Strawberry">Strawberry<br><!-- comment -->
            <input type="checkbox" name="fruits" value="Watermelon">Watermelon<br><!-- comment -->
             <input type="checkbox" name="fruits" value="Kiwi">Kiwi<br>
             <input type="submit" value="Enter"><!-- comment -->
        </form><!-- comment -->
        
        <%
            //us the request object to get the array of fruits that the user chose.
            String[] picked = request.getParameterValues("fruits");

//if the array is not null, then loop through the array of fruits.
if (picked != null && picked.length != 0) {
%>
You picked the following fruit(s):
<ul>
    <% 
        //loop through the array of fruits and display each fruit.
        for( int i = 0; i < picked.length; i++) {
        out.println("<li>" + picked[i]);
    } //end for loop
 %>
</ul><!-- comment -->
<% } //end if %>
    </body><!-- comment -->
</html>