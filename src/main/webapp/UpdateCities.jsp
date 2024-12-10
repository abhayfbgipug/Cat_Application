<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>



<html lang="en">

<head>

 <meta charset="ISO-8859-1">

 <meta name="viewport" content="width=device-width, initial-scale=1.0">

 <title>Exam City Selection</title>
 <link rel="icon" type="image/x-icon" href="images/favicon.ico">

 <link rel="stylesheet" href="c_style.css">

</head>

<body>

 <!-- Navbar Section (Reused from previous code) -->

 <header>

 <nav class="navbar">

  <div class="nav-logo">

  <h1>CAT Application Portal</h1>

  </div>

  <ul class="nav-links">

  <li><a href="#home">Home</a></li>

  <li><a href="#about">About Us</a></li>

  <li><a href="#exam-cities">Exam Cities</a></li>

  <li><a href="#contact">Contact Us</a></li>

  </ul>

  <div class="nav-actions">

  <button class="btn login-btn">Login</button>

  <button class="btn register-btn">Register</button>

  </div>

 </nav>

 </header>

 <!-- Exam City Selection Section -->
 
 <form action="UpdateCityServlet" method="get">

 <section class="exam-city-selection" id="exam-cities">

 <h2>Select Your Preferred Exam Cities</h2>

 <p>Please choose four different cities for center allotment. Select in order of preference.</p>
 
 <div class="city-selection-container">

  <div class="city-box">

  <label for="city1">First Preference</label>

  <select id="city1" name="city1">

   <option value="">Select City</option>

   <option value="Mumbai">Mumbai</option>

   <option value="Delhi">Delhi</option>

   <option value="Bangalore">Bangalore</option>

   <option value="Kolkata">Kolkata</option>

   <!-- Add more options as needed -->

  </select>

  </div>

  <div class="city-box">

  <label for="city2">Second Preference</label>

  <select id="city2" name="city2">

   <option value="">Select City</option>

   <option value="Mumbai">Mumbai</option>

   <option value="Delhi">Delhi</option>

   <option value="Bangalore">Bangalore</option>

   <option value="Kolkata">Kolkata</option>

   <!-- Add more options as needed -->

  </select>

  </div>

  <div class="city-box">

  <label for="city3">Third Preference</label>

  <select id="city3" name="city3">

   <option value="">Select City</option>

   <option value="Mumbai">Mumbai</option>

   <option value="Delhi">Delhi</option>

   <option value="Bangalore">Bangalore</option>

   <option value="Kolkata">Kolkata</option>

   <!-- Add more options as needed -->

  </select>

  </div>

  <!--  <div class="city-box">

  <label for="city4">Fourth Preference</label>

  <select id="city4" name="city4">

   <option value="">Select City</option>

   <option value="Mumbai">Mumbai</option>

   <option value="Delhi">Delhi</option>

   <option value="Bangalore">Bangalore</option>

   <option value="Kolkata">Kolkata</option>

   <!-- Add more options as needed

  </select>

  </div> -->

 </div>

 </section>
 
 <% String errorMessage = (String)request.getAttribute("errorMessage");
    		if(errorMessage != null){
    		%>
    		
    <p style="color: red"><%= errorMessage %></p>
    <% } %>

 <!-- Confirm Button -->

 <button type="submit" class="btn confirm-btn">Confirm Selection</button>
 
 </form>

<!-- </section> --> 

 <!-- Footer Section -->

 <footer class="footer">

 <p>&copy; 2024 CAT Application Portal. All rights reserved.</p>

 </footer>

 <script src="c_script.js"></script>

</body>

</html>




