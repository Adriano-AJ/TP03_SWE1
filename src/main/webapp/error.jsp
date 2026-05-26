<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
         isErrorPage="true" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Erro — Livraria IFSP</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="page-wrapper">

        <!-- Header -->
        <header class="site-header">
            <h1>Livraria <span>IFSP</span></h1>
            <span class="header-badge">Sistema de Gerenciamento</span>
        </header>

        <div class="error-box">
            <div class="error-code">500</div>
            <h2>Ops! Algo deu errado.</h2>
            <p>Ocorreu um erro interno no servidor. Por favor, tente novamente ou entre em contato com o administrador.</p>
            <% if (exception != null) { %>
            <p style="font-size:.8rem; color:var(--text-muted); margin-bottom:24px;">
                Detalhe: <%= exception.getMessage() %>
            </p>
            <% } %>
            <a href="list" class="btn btn-primary">← Voltar para o Início</a>
        </div>

        <!-- Footer -->
        <footer class="site-footer">
            <p>&copy; 2026 IFSP — Sistema de Gerenciamento de Livros</p>
        </footer>

    </div>
</body>
</html>
