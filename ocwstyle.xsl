<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<html>
<head>
   <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.2/angular.min.js"></script>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Doctor Dashboard</title>
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <link rel="stylesheet" href="css/style.css">
      <link rel="stylesheet" href="css/fontawesome.min.css">
      <link href="https://fonts.googleapis.com/css?family=Open+Sans|Roboto" rel="stylesheet">
   </head>
<body>
   <div id="header" class="header">
         <nav class="navbar navbar-expand-lg navbar-light text-capitalize">
            <div class="container">
               <a class="navbar-brand" href="#">Mindful</a>
               <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#show-menu" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
               </button>
               <div class="collapse navbar-collapse" id="show-menu">
                  <ul class="navbar-nav ml-auto">
                     <li class="nav-item active">
                        <a class="nav-link" href="#home">Home</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="#about">Services</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="docdisplay.html">Book an appointment</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="#hiw">Psychiatric test</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="#wcs">Contact us</a>
                     </li>
                     <li class="nav-item">
                         <li class="nav-link"><button class="blue_bt"><a href="docapply.html">Join us!</a></button></li>
                     </li>
                     <li class="nav-item .search-container">
                        <a class="nav-link search" href="#"><i class="fas fa-search"></i></a>
                        <form>
                           <input type="search" placeholder="Search">
                        </form>
                     </li>
                  </ul>
               </div>
            </div>
         </nav>
      </div>


<br><br><br>


<center>
<h1>Doctor's dashboard</h1>
<h2>Menu</h2>
<xsl:for-each select="application/menu">
<li>
   <ol><xsl:value-of select="home"/></ol>
   <ol><xsl:value-of select="service"/></ol>
   <ol><xsl:value-of select="book_appointment"/></ol>
   <ul><xsl:value-of select="test"/></ul>
   <ul><xsl:value-of select="contact"/></ul>
   <ul><xsl:value-of select="join"/></ul>
   
</li>
</xsl:for-each>

<h2>Patient list</h2>
<table border="1">
<tr>
   <th>Patient Name</th>
   <th>Appointment date</th>
   <th>Type</th>
   <th>fee Amount</th>
   
</tr>
<xsl:for-each select="application/dashboard/table/row">
    <tr>
       <td><xsl:value-of select="patientname"/></td>
       <td><xsl:value-of select="appointmentDate"/></td>
       <td><xsl:value-of select="type"/></td>
       <td><xsl:value-of select="fee_amount"/></td>   
    </tr>
</xsl:for-each>
</table>
</center>
</body>
</html>
</xsl:template>
</xsl:stylesheet>