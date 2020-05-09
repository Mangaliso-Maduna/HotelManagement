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
    <title>Ubuntu Hotel |welcome</title>
    <link rel="stylesheet" href="./css/styles.css">
</head>
<body>
  <header>
      <!--logo and the nav{home,about,service,etc}-->
      <div class="container">
          <div id="branding">
              <h1><span class="highlight"> Ubuntu Palm Spring</span> Hotel</h1>
          </div>
          <nav>
              <ul>
                  <li class="current"><a href="index.html">Home</a></li>
                  <li><a href="http://localhost:8080/gallery.html">Gallery</a></li>
                  <li><a href="http://localhost:8080/aboutus.html">About</a></li>
                  <li><a href="http://localhost:8080/contact.html">Contact Us</a></li> 
                   <li><a href="http://localhost:8080/reviews">Reviews</a></li>

              </ul>
          </nav>
      </div>
  </header>  
  <section id="showcase">
      <div class="container">
          <h1>A Very Good Place To Be.</h1>
      </div>
  </section>
  <section id="newsletter">
      <div class="container">
          <h1>Make Reservations Below</h1>
 <!--     <form action="">
              <input type="email" placeholder="Enter emeil">
              <button type="submit" class="button_1">Subscribe</button>
          </form>   -->
      </div>
  </section>
  <section id="boxes">
      <div class="container">
          <form:form  method="post" action="/send"  modelAttribute="booker">
          	<table>
			<tr>
				<td>Full Name:</td>
				<td><form:input path="fullName" /></td>
				<td><form:errors path="fullName" cssClass="error" /></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><form:input path="email" /></td>
				<td><form:errors path="email" cssClass="error" /></td>
			</tr>
			<tr>
				<td>Check in Date:</td>
				<td><form:input path="checkDate" /></td>
				<td><form:errors path="checkDate" cssClass="error" /></td>
			</tr>
			<tr>
				<td>Number of Guests:</td>
				<td><form:input path="noOfGuests" /></td>
				<td><form:errors path="noOfGuests" cssClass="error" /></td>
			</tr>
			<tr>
				<td>Number of Days:</td>
				<td><form:input path="noOfDays" /></td>
				<td><form:errors path="noOfDays" cssClass="error" /></td>
			</tr>
			<tr>
				
				<td colspan="3"><input type="submit" value="Submit" onclick="clicked()"/></td>
				
			</tr>
			      <script type="text/javascript">
			function clicked(){
					return confirm('Sucessfull reserved a place')
				}
</script>
			</table>
          	
          </form:form>
    
      </div>
  </section>
  <footer>
      <p>Ubuntu Palm Springs Hotel, &copy;2020</p>
  </footer>
</body>
</html>