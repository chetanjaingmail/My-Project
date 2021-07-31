<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ include file="header.jsp"%>
<form action="searchuser" method="get"></form>
	<div class="container">
		<div class="row">
			<div class="col-xs-8 col-xs-offset-2">
				<form action="searchuser" method="post">
					<div class="input-group">
						<div class="input-group-btn search-panel">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown">
								<span id="search_concept">Filter by</span> <span class="caret"></span>
							</button>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#name">Name</a></li>
								<li><a href="#email">Email</a></li>
								<li><a href="#contact">Contact</a></li>
							</ul>
						</div>
						<input type="hidden" name="search_param" value="all"
							id="search_param"> <input type="text"
							class="form-control" name="q" placeholder="Search term...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="submit">
								<span class="glyphicon glyphicon-search"></span>
							</button>
							<button class="btn btn-info">Search</button>
						</span>
					</div>
				</form>
			</div>
		</div>
	</div>
	
</body>
<script type="text/javascript">
$(document).ready(function(e){
    $('.search-panel .dropdown-menu').find('a').click(function(e) {
		e.preventDefault();
		var param = $(this).attr("href").replace("#","");
		var concept = $(this).text();
		$('.search-panel span#search_concept').text(concept);
		$('.input-group #search_param').val(param);
	});
});
</script>
</html>