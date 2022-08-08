<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.*"%>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Book List</title>

  </head>
  <body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand mb-0 h2" href="/home">Book Management</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
      </ul>
      <div class="d-flex">
        <p class="me-4">Admin<c:out value="${userList.size()}"></c:out></p>
        <a class="btn btn-outline-danger" href="/logout">logout</a>
      </div>
    </div>
  </div>
</nav>

<div class="container mt-2">
<c:if test="${bookList.size() != 0}">
<header>
<div>

<div class="row justify-content-center">
    <div class="col">
        <h6 class="text-center">
        <c:out value="${bookList.size()}"></c:out>&nbsp; Items In Book List...!
        </h6>
    </div>
    <div class="col" align="right">
        <a href="addbook" class="btn btn-primary">Add Book</a>
    </div>
</div>
</div>
</header>

<table class="table text-center">
  <thead>
    <tr>
      <th>Book Code</th>
      <th>Book Name</th>
      <th>Author</th>
      <th>Date Added</th>
      <th>Actions</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach items = "${bookList}" var = "book">
    	<tr>
        <td>${book.getBookCode()}</td>
      	<td>${book.getBookName()}</td>
      	<td>${book.getBookAuthor()}</td>
      	<td>${book.getDateTime()}</td>

      	<td style="text-align: center;">

      	<c:url var="editBook" value="/editview" />
        <form action="${editBook}" method="post" style="display: inline">
          <input type="hidden" name="id" value="${book.bookCode}" />
        	  <button type="submit" class="btn btn-sm btn-primary">Edit</button>
        </form> &nbsp;&nbsp;

        <c:url var="delete" value="/delete" />
        <form action="${delete}" method="post" style="display: inline">
          <input type="hidden" name="id" value="${book.bookCode}" />
          	<button type="submit" class="btn btn-sm btn-danger">Delete</button>
        </form>

        </td>

    	</tr>
    </c:forEach>
  </tbody>
</table>
</c:if>

<br>
		<br>
		<c:if test="${bookList.size() == 0}">
			<header>
			<div>
				<table width = "100%">
					<tr>
						<td>
							<h2>
								No matching Book found!
							</h2>
						</td>
						<td align = "right">
							<form action="/logout">
							<input type = "submit" value = "SignOut"/>
							</form>
						</td>
					</tr>
				</table>
			</div>
		</header>
		</c:if>
		<br>

</div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>