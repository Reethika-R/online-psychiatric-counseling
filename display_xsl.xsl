<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<head>
<style>
table {
  border-collapse: collapse;
  width: 70%;
}
th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: blue;
  color: white;
}

body{
  background-color:pink;
}
</style>
  </head>
<body>
   <div id="header" class="header">
         <nav class="navbar navbar-expand-lg navbar-light text-capitalize">
            <div class="container">
                     </li>
    <li style="float:left;" class="li"><a  href="index.html">&nbsp;&nbsp;&nbsp;<b style="font-size:28px;" >Mindful</b></a></li>
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
                  </ul>
               </div>
            </div>
         </nav>
      </div>
<br>
<center>
  	<h2>Form details</h2>
 	 <table border="1" style="border-collapse:collapse;">
  	  <tr bgcolor="blue;">
    	 <th>Name</th>
      	 <th>Email</th>
         <th>Phone</th>
         <th>Specialisation</th>
         <th>Experience</th>
         <th>Description</th>
      </tr>
     	<xsl:for-each select="form/formdetails/application_form">
   	 <tr>
    	<td><xsl:value-of select="name"/></td>
      	<td><xsl:value-of select="email"/></td>
        <td><xsl:value-of select="phone_number"/></td>
        <td><xsl:value-of select="Specialisation"/></td>
        <td><xsl:value-of select="experience"/></td>
        <td><xsl:value-of select="description"/></td>
    </tr>
    	</xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>