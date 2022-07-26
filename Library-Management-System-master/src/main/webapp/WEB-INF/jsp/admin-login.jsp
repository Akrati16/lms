<!DOCTYPE html>

 
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Admin Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
</head>
 
<body>
	
    <div class="container my-5">
        <h3>Admin Login</h3>
        <div class="card">
            <div class="card-body">
                <div class="col-md-10">
                <h6>${errorMsg}</h6>
                    <form method="post">
                        <div class="row">
                            
                            <div class="form-group col-md-8">
                                <label for="adminid" class="col-form-label">Admin ID</label> 
                                <input type="text" class="form-control" name="adminid" id="adminid" placeholder="Admin ID" />
                            </div>
                            
                             <div class="form-group col-md-8">
                                <label for="apassword" class="col-form-label">Password</label> 
                                <input type="text" class="form-control" name="apassword" id="apassword" placeholder="Password" />
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
    <div th:insert="fragments/footer :: footer"></div>
    
</body>
 
</html>