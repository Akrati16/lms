<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
 
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Add Category</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
</head>
 
<body>
	
	<%@include file="fragments/header.jsp"%>
    <div class="container my-5">
        <h3>Add Category</h3>
        <div class="card">
            <div class="card-body">
                <div class="col-md-10">
                    <form action="/add-category" th:object="${category}" method="post">
                        <div class="row">                            
                            <div class="form-group col-md-8">
                                <label for="name" class="col-form-label">Category Name</label> 
                                <input type="text" th:field="*{name}" class="form-control" id="name" placeholder="Category Name" />
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