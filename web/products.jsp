<%-- 
    Document   : index
    Created on : 15 Oct, 2019, 2:30:57 PM
    Author     : Nitya
--%>

<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Product Page - Admin HTML Template</title>
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Roboto:400,700"
    />
    <!-- https://fonts.google.com/specimen/Roboto -->
    <link rel="stylesheet" href="css/fontawesome.min.css" />
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="css/templatemo-style.css">
    <!--
	Product Admin CSS Template
	https://templatemo.com/tm-524-product-admin
	-->
  </head>

  <body id="reportsPage">
    <nav class="navbar navbar-expand-xl">
      <div class="container h-100">
          <a class="navbar-brand" href="index.jsp">
              <h1 class="tm-site-title mb-0">Product Admin</h1>
          </a>
          <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
              aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <i class="fas fa-bars tm-nav-icon"></i>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mx-auto h-100">
                  <li class="nav-item">
                      <a class="nav-link" href="index.jsp">
                          <i class="fas fa-tachometer-alt"></i>
                          Dashboard
                          <span class="sr-only">(current)</span>
                      </a>
                  </li>
                  <li class="nav-item dropdown">

                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                          aria-haspopup="true" aria-expanded="false">
                          <i class="far fa-file-alt"></i>
                          <span>
                              Utilities <i class="fas fa-angle-down"></i>
                          </span>
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                          <a class="dropdown-item" href="maintenance.jsp">Monthly Maintenance</a>
                          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                          aria-haspopup="true" aria-expanded="false">
                          <span>
                             Services <i class="fas fa-angle-down"></i>
                          </span>
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="electrician.html">Electrician</a>
                        <a class="dropdown-item" href="plumber.html">Plumber</a>
                        <a class="dropdown-item" href="laundary.html">Laundary</a>
                      </div>
                         
                      </div>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link active" href="products.jsp">
                          <i class="fas fa-shopping-cart"></i>
                          Grocery
                      </a>
                  </li>

                  <li class="nav-item">
                      <a class="nav-link" href="accounts.html">
                          <i class="far fa-user"></i>
                          Profile
                      </a>
                  </li>
                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                          aria-haspopup="true" aria-expanded="false">
                          <i class="fas fa-cog"></i>
                          <span>
                              More.. <i class="fas fa-angle-down"></i>
                          </span>
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                          <a class="dropdown-item" href="#">Feedback</a>
                          <a class="dropdown-item" href="#">Change Password</a>
                          
                      </div>
                  </li>
              </ul>
              <ul class="navbar-nav">
                  <li class="nav-item">
                      <a class="nav-link d-block" href="login.html">
                         Hello <br> <b>Logout</b>
                      </a>
                  </li>
              </ul>
          </div>
      </div>

  </nav>
   <div class="container mt-5">
      <div class="row tm-content-row">
        <div class="col-sm-12 col-md-12 col-lg-8 col-xl-8 tm-block-col">
              
          <div class="tm-bg-primary-dark tm-block tm-block-products">
              <font color="white"><strong><center>Choose to Fetch result</center></strong></font>
           <!---
            <table class="table table-hover tm-table-small tm-product-table">
                <thead>
                  <tr>
                    <th scope="col">&nbsp;</th>
                    <th scope="col">PRODUCT NAME</th>
                   
                    <th scope="col">PRICE(per unit)</th>
                    <th scope="col">&nbsp;</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row"><input type="checkbox" /></th>
                    <td class="tm-product-name">Lorem Ipsum Product 1</td>
                    <td>1,450</td>
                  </tr>
                </tbody>
              </table>
            </div>
            <!-- table container -->
            
          </div>
        </div>
        <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4 tm-block-col">
          <div class="tm-bg-primary-dark tm-block tm-block-product-categories">
            <h2 class="tm-block-title">Product Categories</h2>
            <div class="tm-product-table-container">
               <%
                try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:35451/hci";
String username="root";
String password="1999";
Connection conn=DriverManager.getConnection(url,username,password);

Statement stmt=conn.createStatement();

ResultSet rs=stmt.executeQuery("SELECT * FROM product_categories");
while(rs.next())
{

%>
              <table class="table tm-table-small tm-product-table">
                <tbody>
                  <tr>
                    <td id="categ" class="tm-product-name"><%= rs.getString("categories") %></td>
                    
                  </tr>
                  <%

}
rs.close();
stmt.close();
    conn.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    out.println("Unable to connect");
    }


%>
                  <!--
                  <tr>
                    <td class="tm-product-name">POTATO</td>
                    <td class="text-center">
                      <a href="#" class="tm-product-delete-link">
                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                      </a>
                    </td>
                  </tr>
                  <tr>
                    <td class="tm-product-name">Product Category 3</td>
                    <td class="text-center">
                      <a href="#" class="tm-product-delete-link">
                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                      </a>
                    </td>
                  </tr>
                  <tr>
                    <td class="tm-product-name">Product Category 4</td>
                    <td class="text-center">
                      <a href="#" class="tm-product-delete-link">
                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                      </a>
                    </td>
                  </tr>
                  <tr>
                    <td class="tm-product-name">Product Category 5</td>
                    <td class="text-center">
                      <a href="#" class="tm-product-delete-link">
                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                      </a>
                    </td>
                  </tr>
                  <tr>
                    <td class="tm-product-name">Product Category 6</td>
                    <td class="text-center">
                      <a href="#" class="tm-product-delete-link">
                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                      </a>
                    </td>
                  </tr>
                  <tr>
                    <td class="tm-product-name">Product Category 7</td>
                    <td class="text-center">
                      <a href="#" class="tm-product-delete-link">
                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                      </a>
                    </td>
                  </tr>
                  <tr>
                    <td class="tm-product-name">Product Category 8</td>
                    <td class="text-center">
                      <a href="#" class="tm-product-delete-link">
                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                      </a>
                    </td>
                  </tr>
                  <tr>
                    <td class="tm-product-name">Product Category 9</td>
                    <td class="text-center">
                      <a href="#" class="tm-product-delete-link">
                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                      </a>
                    </td>
                  </tr>
                  <tr>
                    <td class="tm-product-name">Product Category 10</td>
                    <td class="text-center">
                      <a href="#" class="tm-product-delete-link">
                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                      </a>
                    </td>
                  </tr>
                  <tr>
                    <td class="tm-product-name">Product Category 11</td>
                    <td class="text-center">
                      <a href="#" class="tm-product-delete-link">
                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                      </a>
                    </td>
                  </tr>  -->
                </tbody>
              </table>
            </div>
            <!-- table container -->
           </div>
        </div>
      </div>
    </div>
    
    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
    <script>
      $(function() {
        $(".tm-product-name").on("click", function() {
	          window.location.href = "products-baby.jsp";
        });
      });
    </script>
  </body>
</html>