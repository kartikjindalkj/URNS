<%-- 
    Document   : index
    Created on : 15 Oct, 2019, 2:30:57 PM
    Author     : Nitya
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
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

                      <a class="nav-link dropdown-toggle active" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
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
                      <a class="nav-link" href="products.jsp">
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
  
  <div class="tm-block-col tm-col-account-settings">
    <div class="tm-bg-primary-dark tm-block tm-block-settings">
      <h2 class="tm-block-title">Payment</h2>
      <form action="" class="tm-signup-form row">
        <div class="form-group col-lg-6">
          <label for="name">Card holder Name</label>
          <input
            id="name"
            name="name"
            type="text"
            class="form-control validate"
          />
        </div>
        <div class="form-group col-lg-6">
          <label for="card number">Debit/Credit Card Number</label>
          <input
            id="email"
            name="email"
            type="text"
            maxlength="16"
            class="form-control validate"
          />
        </div>
        <div class="form-group col-lg-6">
          <label for="password">CVV</label>
          <input
            id="password"
            name="password"
            type="password"
            class="form-control validate"
            maxlength="3"
          />
        </div>
        
        <div class="form-group col-lg-6">
          <label for="expdate">Expiry Date</label>
          <input
            id="phone"
            name="phone"
            type="text"
            maxlength="7"
            class="form-control validate"
          />
        </div>
        <div class="form-group col-lg-6">
          <label class="tm-hide-sm">&nbsp;</label>
          <button
            type="submit"
            class="btn btn-primary btn-block text-uppercase"
          >
            Proceed to pay
          </button>
        </div>
        <div class="form-group col-lg-6">
            <label class="tm-hide-sm">&nbsp;</label>
            <button
              type="reset"
              class="btn btn-primary btn-block text-uppercase"
            >
              Cancel
            </button>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>

            <div class="col-12 tm-block-col">
                    <div class="tm-bg-primary-dark tm-block tm-block-taller tm-block-scroll">
                        <h2 class="tm-block-title">PAYMENT HISTORY</h2>
  

                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">PAYMENT ID</th>
                                    <th scope="col">STATUS</th>
                                    <th scope="col">PAYMENT DATE</th>
                                    <th scope="col">PAYMENT TYPE</th>
                                    <th scope="col">FINE</th>
                                    <th scope="col">ARREARS</th>
                                    <th scope="col">AMOUNT PAID</th>
                                </tr>
                            </thead>
                                                                              <%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:35451/hci";
String username="root";
String password="1999";
Connection conn=DriverManager.getConnection(url,username,password);

Statement stmt=conn.createStatement();

ResultSet rs=stmt.executeQuery("SELECT * FROM payment_history");
while(rs.next())
{

%>                          
                            <tbody>
                                <tr>
                                    <th scope="row"><%= rs.getString("payment_id") %></th>
                                    <td>
                                        <div class="tm-status-circle moving">
                                        </div><%= rs.getString("status") %>
                                    </td>
                                    <td><%= rs.getString("payment_date") %></td>
                                    <td><%= rs.getString("payment_type") %></td>
                                    <td><%= rs.getString("fine") %></td>
                                    <td><%= rs.getString("arrears") %></td>
                                    <td><%= rs.getString("amount_paid") %></td>
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

                            </tbody>
                        </table>
                    </div>
                </div>
        
    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
    <script>
      $(function() {
        $(".tm-product-name").on("click", function() {
          window.location.href = "edit-product.html";
        });
      });
    </script>
  </body>
</html>