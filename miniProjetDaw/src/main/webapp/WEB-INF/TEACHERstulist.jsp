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
<title>Liste des etudiants</title>
</head>

<body>

<div id="entete">
<%@include file="/WEB-INF/header.jsp"%>
</div>
<div id="main">
<div id="menu">
<%@include file="/WEB-INF/mainPageProf.jsp"%></div>

 <div id="contenu">
 
<label class="wrapper" for="states">Select the Student Group </label>
<div class="button dropdown"> 
  <select id="colorselector" name="groupeSelector">
     <option value="A" >A</option>
     <option value="B">B</option>
     <option value="C">C</option>
    <option value="D">D</option>
  </select>
</div>  

 

 
  <section>
  
<div class="table">
    
    <div class="row header rgba ">
    <div class="th">
        id
      </div>
    
      <div class="th">
        nom
      </div>
      <div class="th">
       prenom
      </div>
      <div class="th">
       groupe
      </div>
</div>
     
     

  <c:forEach begin="0" end="${etudListG.size()-1}" var="i"  step="1" >  
  <div class="row">
    <div class="th" >
        <c:out value="${etudListG[i].id}" />
      </div>
  
      <div class="th" >
        <c:out value="${etudListG[i].firstnameEtud}" />
      </div>
      
      <div class="th" >
        <c:out value="${etudListG[i].lastnameEtud}" />
      </div>
      <div class="th" >
        <c:out value="${etudListG[i].groupe}" />
      </div>
      </div>
  </c:forEach>
</div>

  
      
    </section>
   </div> 
  </div>   
    
 
 <div class="bk">
 <%@include file="/WEB-INF/bk.jsp"%> 
 </div>


</body>
<script type="text/javascript">
<%@include file="/WEB-INF/animation.js"%></script>
<script src="./animation.JS"></script>
</html>



