<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>All Publishers</title>

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<link rel="stylesheet"href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
	
</head>
<body>
	<%@include file="fragments/header.jsp"%>
	<div class="container my-2">
		<div class="card">
			<div class="card-body">
				<div th:switch="${publishers}" class="container my-5">
					<p class="my-5">
						<a href="/addPublisher" class="btn btn-primary"> 
						<i class="fas fa-user-plus ml-2">  Add Publisher </i></a>
					</p>
					<div class="col-md-12">
						<h2 th:case="null">No record found !!</h2>
						<div th:case="*">
							<table class="table table-striped table-responsive-md">
								<thead>
									<tr>
										<th>Publisher Name</th>
										<th>Edit</th>
										<th>Delete</th>
									</tr>
								</thead>
								<tbody>
									<tr th:each="publisher : ${publishers}">
										<td th:text="${publisher.name}"></td>
										<td><a th:href="@{/updatePublisher/{id}(id=${publisher.id})}" class="btn btn-primary"><i class="fas fa-user-edit ml-2"></i></a></td>
										<td><a th:href="@{/remove-publisher/{id}(id=${publisher.id})}" class="btn btn-primary"><i class="fas fa-user-times ml-2"></i></a></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="fragments/footer.jsp"%>
</body>

</html>