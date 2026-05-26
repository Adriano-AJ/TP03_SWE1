<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gerenciamento de Livros — IFSP</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="page-wrapper">

        <!-- Header -->
        <header class="site-header">
            <h1>Livraria <span>IFSP</span></h1>
            <span class="header-badge">Sistema de Gerenciamento</span>
        </header>

        <!-- Page title + action -->
        <div class="page-title-row">
            <h2>Lista de Livros</h2>
            <a href="new" class="btn btn-primary">+ Adicionar Livro</a>
        </div>

        <!-- Table -->
        <div class="table-card">
            <table>
                <thead>
                    <tr>
                        <th class="col-id">ID</th>
                        <th>Título</th>
                        <th>Autor</th>
                        <th>Preço</th>
                        <th>Ações</th>
                    </tr>
                </thead>
                <tbody>
                    <c:choose>
                        <c:when test="${empty listBook}">
                            <tr>
                                <td colspan="5">
                                    <div class="empty-state">
                                        <p>Nenhum livro cadastrado ainda. <a href="new">Adicione o primeiro!</a></p>
                                    </div>
                                </td>
                            </tr>
                        </c:when>
                        <c:otherwise>
                            <c:forEach var="book" items="${listBook}">
                                <tr>
                                    <td class="col-id">#<c:out value="${book.id}" /></td>
                                    <td><c:out value="${book.title}" /></td>
                                    <td><c:out value="${book.author}" /></td>
                                    <td class="col-price">R$ <c:out value="${book.price}" /></td>
                                    <td>
                                        <div class="table-actions">
                                            <a href="edit?id=<c:out value='${book.id}'/>" class="btn btn-secondary btn-sm">Editar</a>
                                            <a href="delete?id=<c:out value='${book.id}'/>"
                                               class="btn btn-danger btn-sm"
                                               onclick="return confirm('Deseja realmente excluir o livro &quot;<c:out value="${book.title}"/>&quot;?')">
                                               Excluir
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                        </c:otherwise>
                    </c:choose>
                </tbody>
            </table>
        </div>

        <!-- Footer -->
        <footer class="site-footer">
            <p>&copy; 2026 IFSP — Sistema de Gerenciamento de Livros</p>
            <a href="Creditos.jsp">Créditos dos Desenvolvedores</a>
        </footer>

    </div>
</body>
</html>
