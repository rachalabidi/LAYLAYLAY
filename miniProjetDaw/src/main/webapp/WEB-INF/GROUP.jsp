<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib   uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   

<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
  <style>
  
          
           <%@include file="/WEB-INF/CSS/decouperlapage.css"%>
           <%@include file="/WEB-INF/CSS/listes.css"%>
     
     
</style>
<title>GROUP</title>
</head>

<body>

<div id="entete">
<%@include file="/WEB-INF/header.jsp"%>

</div>

<div id="main">
<div id="menu">
<%@include file="/WEB-INF/mainPageProf.jsp"%>  
 </div>
 

 <div id="contenu">
 
 <label class="wrapper" for="states">Select the Student Group </label>
<div class="button dropdown"> 
  <select id="colorselector" name="groupeSelector">
     <option value="1" >1</option>
     <option value="2">2</option>
     <option value="3">3</option>
    <option value="4">4</option>
  </select>
</div>
 

 </div>
 </div>

    
    
   <!--   <section> 
                        <div class="tbl-header">
                      
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th class="cell">ID</th>
          <th class="cell">Nom</th>
          <th class="cell">Prenom</th>
          <th class="cell">Modifier</th>
          <th class="cell">Supprimer</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
       
         
      </tbody>
    </table>
  </div>
</section> 
  -->
 <div class="bk">
 <%@include file="/WEB-INF/bk.jsp"%> 
 </div>


</body>
<script type="text/javascript">
<%@include file="/WEB-INF/animation.js"%></script>
<script src="./animation.JS"></script>
</html>



