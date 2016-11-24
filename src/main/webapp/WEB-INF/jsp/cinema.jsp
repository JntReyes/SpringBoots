
<!DOCTYPE HTML>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache"> 
    <meta http-equiv="Cache-Control" content="no-cache"> 
    <meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">
    
    <title>Cinema Manager | Home</title>
    
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
     <link href="static/css/style.css" rel="stylesheet">
    
    <!--[if lt IE 9]>
		<script src="static/js/html5shiv.min.js"></script>
		<script src="static/js/respond.min.js"></script>
	<![endif]-->
</head>
<body>

	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/" class="navbar-brand">Home</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
				
					<li><a href="new-cinema">New Cinema</a></li>
					<li><a href="all-cinemas">All Cinemas</a></li>
					
					
				</ul>
			</div>
		</div>
	</div>
	
	<c:choose>
		<c:when test="${mode == 'MODE_HOME'}">
			<div class="container" id="homeDiv">
				<div class="jumbotron text-center">
					<h1>Welcome to the Cinema</h1>
				</div>
			</div>
		</c:when>
		
		
		<c:when test="${mode == 'MODE_CINEMAS'}">
			<div class="container text-center" id="cinemasDiv">
				<h3>My Cinemas</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered text-left">
						<thead>
							<tr>
								<th>Id</th>
								<th>Name</th>
								<th>City</th>
								<th>Address</th>
								<th>Rooms</th>
								<th>Manager</th>
								<td>VIP</td>
								<th></th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="cinema" items="${cinemas}">
								<tr>
									<td>${cinema.id}</td>
									<td>${cinema.name}</td>
									<td>${cinema.city}</td>
									<td>${cinema.address}</td>
									<td>${cinema.room}</td>
									<td>${cinema.manager}</td>
									<td>${cinema.vip}</td>
									<td><a href="update-cinema?id=${cinema.id}"><span class="glyphicon glyphicon-pencil"></span></a></td>
									<td><a href="delete-cinema?id=${cinema.id}"><span class="glyphicon glyphicon-trash"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>
		
		
		
		<c:when test="${mode == 'MODE_NEW' || mode == 'MODE_UPDATE'}">
			<div class="container text-center">
				<h3>Manage Cinema</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-cinema">
					<input type="hidden" name="id" value="${cinema.id}"/>
					<div class="form-group">
						<label class="control-label col-md-3">Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="name" value="${cinema.name}"/>
						</div>				
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">City</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="city" value="${cinema.city}"/>
						</div>				
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">Address</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="address" value="${cinema.address}"/>
						</div>				
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">Rooms</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="room" value="${cinema.room}"/>
						</div>				
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">Manager</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="manager" value="${cinema.manager}"/>
						</div>				
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">VIP</label>
						<div class="col-md-7">
							<input type="radio" class="col-sm-1" name="vip" value="true"/>
							<div class="col-sm-1">Yes</div>
							<input type="radio" class="col-sm-1" name="vip" value="false" checked/>
							<div class="col-sm-1">No</div>
						</div>				
					</div>		
					<div class="form-group">
						<input type="submit" class="btn btn-primary" value="Save"/>
					</div>
				</form>
			</div>
		</c:when>	
		
	</c:choose>

	<script src="static/js/jquery-1.11.1.min.js"></script>    
    <script src="static/js/bootstrap.min.js"></script>
</body>
</html>
