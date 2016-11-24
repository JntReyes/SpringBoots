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
    
    <title>Film Manager | Home</title>
    
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
			
			
					<li><a href="new-film">New Film</a></li>
					<li><a href="all-films">All Films</a></li>
					
					
				</ul>
			</div>
		</div>
	</div>
	
	<c:choose>
		<c:when test="${mode == 'MODE_HOME'}">
			<div class="container" id="homeDiv">
				<div class="jumbotron text-center">
					<h1>Welcome to the Films</h1>
				</div>
			</div>
		</c:when>
		
		
		<c:when test="${mode == 'MODE_FILMS'}">
			<div class="container text-center" id="filmsDiv">
				<h3>My Films</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered text-left">
						<thead>
							<tr>
								<th>Id</th>
								<th>Title</th>
								<th>Description</th>
								<th>Language</th>
								<th>rental duration</th>
								<th>Length</th>
								<th>Release year</th>
								<th>Replacement cost</th>
								<th>Special features</th>
								<th>full text</th>
								<th></th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="film" items="${films}">
								<tr>
									<td>${film.id}</td>
									<td>${film.title}</td>
									<td>${film.description}</td>
									<td>${film.language}</td>
									<td>${film.rentalDuration}</td>
									<td>${film.length}</td>
									<td>${film.releaseYear}</td>
									<td>${film.replacementCost}</td>
									<td>${film.specialFeatures}</td>
									<td>${film.fullText}</td>
									<td><a href="update-film?id=${film.id}"><span class="glyphicon glyphicon-pencil"></span></a></td>
									<td><a href="delete-film?id=${film.id}"><span class="glyphicon glyphicon-trash"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>
		
		
		
	<c:when test="${mode == 'MODE_NEW' || mode == 'MODE_UPDATE'}">
			<div class="container text-center">
				<h3>Manage Film</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-film">
					<input type="hidden" name="id" value="${film.id}"/>
					<div class="form-group">
						<label class="control-label col-md-3">Title</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="title" value="${film.title}"/>
						</div>				
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Description</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="description" value="${film.description}"/>
						</div>				
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">Language</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="language" value="${film.language}"/>
						</div>				
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">Rental duration</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="rentalDuration" value="${film.rentalDuration}"/>
						</div>				
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">Length</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="length" value="${film.length}"/>
						</div>				
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">Release year</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="releaseYear" value="${film.releaseYear}"/>
						</div>				
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">Replacement cost</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="replacementCost" value="${film.replacementCost}"/>
						</div>				
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">Special features</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="specialFeatures" value="${film.specialFeatures}"/>
						</div>				
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">Full text</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="fullText" value="${film.fullText}"/>
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