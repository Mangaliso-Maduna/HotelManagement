<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="javatime" uri="http://sargue.net/jsptags/time"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Ubuntu Palm Spring Hotel">
        <meta name="keywords" content="Ubuntu, Palm Spring, Hotel">
        <meta name="author" content="mangaliso maduna">
    <title>Reviews</title>
    <link rel="stylesheet" href="./css/reviews.css">
</head>
<body>
  <header>
   
      <div class="container">
          <div id="branding">
              <h1><span class="highlight"> Ubuntu Palm Spring</span> Hotel</h1>
          </div>
          <nav>
              <ul>
                  <li class="current"><a href="http://localhost:8080/">Home</a></li>
                  <li><a href="http://localhost:8080/gallery.html">Gallery</a></li>
                  <li><a href="http://localhost:8080/aboutus.html">About</a></li>
                  <li><a href="http://localhost:8080/contact.html">ContuctUs</a></li> 

              </ul>
          </nav>
      </div>
  </header>  
  
  <h1>Our Reviews As Rated By The Customers</h1>
  <section id="boxes">
      <div class="container">
         <table>
         		<tr>
         			<th>User ID</th>
         			<th>Browser Used</th>
         			<th>Device Used</th>
         			<th>Response</th>
         		</tr>
  
         	<c:forEach items="${reviews}" var="item" varStatus="i">
				<tr>
					<td>${item.userid}</td>
					<td>${item.browserused}</td>
					<td>${item.deviceused}</td>
					<td>${item.response}</td>
				</tr>
			</c:forEach>
         </table>
      </div>
  </section>
  <footer>
      <p>Ubuntu Palm Springs Hotel, &copy;2020</p>
  </footer>
</body>
</html>