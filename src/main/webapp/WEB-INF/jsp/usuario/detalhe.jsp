<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>App TP3</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>

	<div class="container">
		

		<form action="/usuario/incluir" method="post">
			<div class="form-group">
				<label><strong>Informe seu nome:</strong></label> 
				<input type="text" class="form-control" name="nome">
			</div>

			<div class="form-group">
				<label><strong>Informe seu e-mail:</strong></label> 
				<input type="email" class="form-control" name="email">
			</div>

			<div class="form-group">
				<label><strong>Informe sua senha:</strong></label> 
				<input type="password" class="form-control" name="senha">
			</div>
			<button type="submit" class="btn btn-primary"><strong>Gravar Novo Usuário</button>


		</form>
		<c:if test="${not empty usuarios}">
		  <h4><strong><p class="text-center bg-info">.::LISTA DE USUÁRIOS CADASTRADOS::.</p></strong></h4>            
		  <table class="table">
		    <thead>
		      <tr>
		        <th>Nome</th>
		        <th>E-mail</th>
		        <th></th>
		      </tr>
		    </thead>
		    <tbody>
		    <c:forEach var="u" items="${usuarios}">
		      <tr>
		        <td>${u.nome}</td>
		        <td>${u.email}</td>
		        <th> <button type="button" class="btn btn-danger text-center"> <a href="/usuario/${u.id}/excluir">Excluir</a></th></button>
		      </tr>
		      </c:forEach>
		    </tbody>
		  </table>
		  </c:if>
		  
		  <c:if test="${empty usuarios}">
		  <h4><p class="text-center bg-danger"><strong>.::Nenhum Usuário Cadastrado::.</p></strong></h4>
		  </c:if>
		</div>
		</body>
		</html>