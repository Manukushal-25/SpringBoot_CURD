<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
    	rel="stylesheet" 
    	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
    	crossorigin="anonymous">

    <title>Login Page</title>

  </head>
  <body>

<div class="container">

<div class="row py-1 mt-4">
          <!-- First Column -->
          <div class="col-md-6 offset-md-3">
            <div class="card-header">
              Book Management System
            </div>
            <!-- Form -->
            <fieldset class="form-group border p-3">
                <legend  class="w-auto px-2">Login Details</legend><hr>

                <form action="#" th:action="@{/login}" th:object="${user}" method="post" id="enrollment-form" onsubmit="handleSumbit(event)">

                    <div class="row mb-3">
                      <div class="col-3 col-md-4 text-start">
                        <label for="User Id" class="form-label">User Id</label>
                      </div>
                      <div class="col-9 col-md-8 text-center">
                        <input type="text"  class="form-input m-0 w-100 rounded border-1" name="username" required/>
                      </div>
                    </div>
                    <div class="row mb-3">
                      <div class="col-3 col-md-4 text-start">
                        <label for="Password" class="form-label">Password</label>
                      </div>
                      <div class="col-9 col-md-8 text-center">
                        <input type="password" class="form-input m-0 w-100 rounded border-1" name="password" required/>
                      </div>
                    </div>
      
                  
                    <div class="row mb-3 mt-2">
                      <div class="col">
                        <button type="submit" class="btn btn-success">Login</button>
                        <button class="btn btn-danger" type="reset" onclick="">Clear</button>
                      </div>
                    </div>
                  </form>
            </fieldset>
          
          </div>
</div>

</div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
    		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" 
    		crossorigin="anonymous">
    </script>
  </body>
</html>