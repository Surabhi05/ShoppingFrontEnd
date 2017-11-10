<html>
<head>
<title>Home page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
	  width:70%;
   height: 700px;
  margin: auto;
  }
  </style>
</head>

  
 <style>
body {
    background-image: url("resources/images/gold.jpg");
    
}

p.italic {
    font-style: italic;
}

 p {
    font-size:50px;
}
body {
    color: white;
}


</style>
<body>

<jsp:include page="header.jsp" />


<div class="container">
  
  <div class="container">
   
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
      <li data-target="#myCarousel" data-slide-to="5"></li>
      <li data-target="#myCarousel" data-slide-to="6"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="resources/images/discount.jpg" alt="pendants" style="width:80%;">
      </div>

      <div class="item">
        <img src="resources/images/shopring1.jpg" alt="rings" style="width:80%;">
      </div>
    
      <div class="item">
        <img src="resources/images/Bracelets.jpg" alt="Braclets" style="width:87%;">
      </div>
      
      <div class="item">
        <img src="resources/images/bangles1.jpg" alt="Bangles" style="width:92%;">
      </div>
      
      <div class="item">
        <img src="resources/images/earring.jpg" alt="earring" style="width:30%;">
      </div>
      
      
     <div class="item">
        <img src="resources/images/pendants.jpg" alt="Bridaljewellery" style="width:30%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<p class="italic">Categories </p>

  <div class="row">
    <div class="col-sm-4" style="background-color:pink;">
    <img src="resources/images/pendant1.jpg" width="300" height="200" />
     
    </div>
    <div class="col-sm-4" style="background-color:pink;">
      <img src="resources/images/ring1.jpg" width="300" height="200" />
    </div>
    <div class="col-sm-4" style="background-color:pink;">
    <img src="resources/images/braclet1.jpg" width="300" height="200" />
    </div>
  </div>
  
  


</div>
<jsp:include page="footer.jsp" />
</body>
</html>
