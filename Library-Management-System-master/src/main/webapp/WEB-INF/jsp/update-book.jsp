<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
 
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Update Book</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
</head>
 
<body>
	<%@include file="fragments/header.jsp"%>
    <div class="container my-5">
        <h3>Update Book</h3>
        <div class="card">
            <div class="card-body">
                <div class="col-md-10">
                    <form action="#" th:action="@{/update-book/{id}(id=${book.id})}" th:object="${book}" method="post">
                        <div class="row">
                        
                            <div class="form-group col-md-8">
                                <label for="isbn" class="col-form-label">ISBN</label> 
                                <input type="text" th:field="*{isbn}" class="form-control" id="isbn" placeholder="ISBN" />
                                <span th:if="${#fields.hasErrors('isbn')}" th:errors="*{isbn}"></span>
                            </div>
                            
                            <div class="form-group col-md-8">
                                <label for="name" class="col-form-label">Book Name</label> 
                                <input type="text" th:field="*{name}" class="form-control" id="name" placeholder="Book Name" />
                            </div>
                            
                            <div class="form-group col-md-8">
                                <label for="serialName" class="col-form-label">Serial Name </label> 
                                <input type="text" th:field="*{serialName}" class="form-control" id="serialName" placeholder="Serial Name" />
                            </div>
                            
                             <div class="form-group col-md-8">
                                <label for="description" class="col-form-label">Description</label> 
                                <input type="text" th:field="*{description}" class="form-control" id="description" placeholder="Description" />
                            </div>
 
                            <div class="col-md-6">
                                <input type="submit" class="btn btn-primary" value=" Submit ">
                            </div>
     
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
   <%@include file="fragments/footer.jsp"%>
</body>
 
</html>