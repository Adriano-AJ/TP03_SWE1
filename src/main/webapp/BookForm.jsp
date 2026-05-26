<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>
        <c:choose>
            <c:when test="${book != null}">Editar Livro</c:when>
            <c:otherwise>Novo Livro</c:otherwise>
        </c:choose>
        — Livraria IFSP
    </title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="page-wrapper">

        <!-- Header -->
        <header class="site-header">
            <h1>Livraria <span>IFSP</span></h1>
            <span class="header-badge">Sistema de Gerenciamento</span>
        </header>

        <!-- Breadcrumb -->
        <nav class="breadcrumb" aria-label="Navegação">
            <a href="list">Livros</a>
            <span class="sep">›</span>
            <span class="current">
                <c:choose>
                    <c:when test="${book != null}">Editar Livro</c:when>
                    <c:otherwise>Novo Livro</c:otherwise>
                </c:choose>
            </span>
        </nav>

        <!-- Page title -->
        <div class="page-title-row">
            <h2>
                <c:choose>
                    <c:when test="${book != null}">Editar Livro</c:when>
                    <c:otherwise>Adicionar Novo Livro</c:otherwise>
                </c:choose>
            </h2>
        </div>

        <!-- Form card -->
        <div class="form-card">
            <c:choose>
                <c:when test="${book != null}">
                    <form action="update" method="post" novalidate>
                    <input type="hidden" name="id" value="<c:out value='${book.id}'/>" />
                </c:when>
                <c:otherwise>
                    <form action="insert" method="post" novalidate>
                </c:otherwise>
            </c:choose>

                <div class="form-group">
                    <label for="title">Título</label>
                    <input type="text" id="title" name="title" maxlength="200"
                           placeholder="Ex: Dom Casmurro"
                           value="<c:out value='${book.title}'/>" required />
                </div>

                <div class="form-group">
                    <label for="author">Autor</label>
                    <input type="text" id="author" name="author" maxlength="100"
                           placeholder="Ex: Machado de Assis"
                           value="<c:out value='${book.author}'/>" required />
                </div>

                <div class="form-group">
                    <label for="price">Preço (R$)</label>
                    <input type="number" id="price" name="price"
                           step="0.01" min="0" max="9999.99"
                           placeholder="0,00"
                           value="<c:out value='${book.price}'/>" required />
                </div>

                <hr class="form-divider">

                <div class="form-actions">
                    <button type="submit" class="btn btn-primary">
                        <c:choose>
                            <c:when test="${book != null}">Salvar Alterações</c:when>
                            <c:otherwise>Adicionar Livro</c:otherwise>
                        </c:choose>
                    </button>
                    <a href="list" class="btn btn-secondary">Cancelar</a>
                </div>

            </form>
        </div>

        <!-- Footer -->
        <footer class="site-footer">
            <p>&copy; 2026 IFSP — Sistema de Gerenciamento de Livros</p>
            <a href="Creditos.jsp">Créditos dos Desenvolvedores</a>
        </footer>

    </div>
</body>
</html>
