<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>All Books</title>

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<link rel="stylesheet"href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
	
</head>
<body>
	<%@include file="fragments/header.jsp"%>
	<div class="container my-2">
		<div class="card">
			<div class="card-body">
				<div th:switch="${books}" class="container my-5">
					<p class="my-5">
						<a href="/add" class="btn btn-primary"> 
						<i class="fas fa-user-plus ml-2">  Add Book </i></a>
					</p>
					<div class="col-md-12">
						<h2 th:case="null">No record found !!</h2>
						<div th:case="*">
							<table class="table table-striped table-responsive-md">
								<thead>
									<tr>
										<th>ISBN </th>
										<th>Book Name</th>
										<th>Serial Name</th>
										<th>Description</th>
										<th>Detail</th>
										<th>Edit</th>
										<th>Delete</th>
									</tr>
								</thead>
								<tbody>
									<tr th:each="book : ${books}">
										<td th:text="${book.isbn}"></td>
										<td th:text="${book.name}"></td>
										<td th:text="${book.serialName}"></td>
										<td th:text="${book.description}"></td>
										<td><a th:href="@{/book/{id}(id=${book.id})}" class="btn btn-primary"><i class="fas fa-marker ml-2"></i></a></td>
										<td><a th:href="@{/update/{id}(id=${book.id})}" class="btn btn-primary"><i class="fas fa-user-edit ml-2"></i></a></td>
										<td><a th:href="@{/remove-book/{id}(id=${book.id})}" class="btn btn-primary"><i class="fas fa-user-times ml-2"></i></a></td>
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