<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/plugins/jstl/core" prefix="c" %>
<html>
<head>
    <title>Gerenciamento de Livros</title>
</head>
<body>
    <center>
        <h1>Gerenciamento de Livros - IFSP</h1>
        <h2><a href="new">Adicionar Novo Livro</a></h2>
    </center>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>Lista de Livros</h2></caption>
            <tr>
                <th>ID</th>
                <th>Título</th>
                <th>Autor</th>
                <th>Preço</th>
                <th>Ações</th>
            </tr>
            <c:forEach var="book" items="${listBook}">
                <tr>
                    <td><c:out value="${book.id}" /></td>
                    <td><c:out value="${book.title}" /></td>
                    <td><c:out value="${book.author}" /></td>
                    <td><c:out value="${book.price}" /></td>
                    <td>
                        <a href="edit?id=<c:out value='${book.id}' />">Editar</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="delete?id=<c:out value='${book.id}' />" onclick="return confirm('Tem certeza?')">Deletar</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <br>
        <p><a href="Creditos.jsp">Ver Creditos dos Desenvolvedores</a></p>
    </div>
</body>
</html>