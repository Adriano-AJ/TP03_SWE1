<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Créditos — Livraria IFSP</title>
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
            <span class="current">Créditos</span>
        </nav>

        <!-- Page title -->
        <div class="page-title-row">
            <h2>Equipe de Desenvolvimento</h2>
        </div>

        <!-- Credits grid -->
        <%-- Adicione ou remova cards conforme os membros do grupo --%>
        <div class="credits-grid">

            <div class="credit-card">
                <div class="initials">JS</div>
                <h3>Jusiandro Silva</h3>
                <p>Desenvolvedor Full Stack</p>
            </div>

            <%-- Exemplo de card adicional — duplique conforme necessário
            <div class="credit-card">
                <div class="initials">AB</div>
                <h3>Nome do Integrante</h3>
                <p>Função / Responsabilidade</p>
            </div>
            --%>

        </div>

        <br>
        <div style="margin-top:24px">
            <a href="list" class="btn btn-secondary">← Voltar para Lista de Livros</a>
        </div>

        <!-- Footer -->
        <footer class="site-footer">
            <p>&copy; 2026 IFSP — Sistema de Gerenciamento de Livros</p>
            <p>Trabalho Prático 03 — CBTSWE1</p>
        </footer>

    </div>
</body>
</html>
