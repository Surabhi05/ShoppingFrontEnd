<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
		<meta name="viewport" content="width=device-width, initial-scale=1">


		<!-- Website CSS style -->
		<link href="css/bootstrap.min.css" rel="stylesheet">

		<!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		<link rel="stylesheet" href="style.css">
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

		<title>contact here</title>
	</head>
<body>
<jsp:include page="header.jsp" />
  
<<div class="container">
 <div class="row">
<<div class="col-md-2">
			<form>
			<div id="contact-form" class="form-container" data-form-container>
			<div class="row">
	       <div class="form-title">
				<h4 style="color: black; margin: initial; margin-bottom: 10px;">Contact us</h4><hr></br>	
				</div>
			</div>
			
			
<div class="input-container">
<div class="col-md-3">
<div class="col-md-6">
 <div class="row myborder">

<div class="input-group margin-bottom-20">
 <span class="input-group-addon"><i class="glyphicon glyphicon-Customer mycolor"></i></span>
<span class="input-status" data-toggle="tooltip" data-placement="top" title="Input Your First and Last Name."> </span>
<input type="text" data-min-length="8" placeholder="Full Name">
	
</div>
				
				</br></br>
				
				
<div class="row">
<span class="req-input">
<span class="input-status" data-toggle="tooltip" data-placement="top" title="Please Input Your Email."> </span>
<input type="email" placeholder="Email">
</span>

				</br></br>
				
				<div class="row">
					<span class="req-input">
						<span class="input-status" data-toggle="tooltip" data-placement="top" title="Please Input Your Phone Number."> </span>
						<input type="tel" placeholder="Phone Number">
					</span>
				</div>
				
				</br></br>
				<div class="row">
					<span class="req-input message-box">
						<span class="input-status" data-toggle="tooltip" data-placement="top" title="Please Include a Message."> </span>
						<textarea type="textarea" data-min-length="10" placeholder="Message"></textarea>
				</div>
				</br></br>
				<div class="row submit-row">
					 <button type="submit" class="btn btn-primary btn-sm">
                    <span class="glyphicon glyphicon-save"></span>
                   SAVE</button>
                   
				</div>
			</div>
			</div>
			</form>
		</div>

</body>
</html>