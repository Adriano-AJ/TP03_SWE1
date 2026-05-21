# Sistema de Gerenciamento de Livros (Bookstore CRUD)

Este projeto consiste em uma aplicação web para o gerenciamento de um acervo de livros, permitindo realizar as operações fundamentais de **CRUD** (Create, Read, Update e Delete). O sistema foi desenvolvido como trabalho prático para a disciplina **CBTSWE1** do curso de Análise e Desenvolvimento de Sistemas no **Instituto Federal de Educação, Ciência e Tecnologia de São Paulo (IFSP) – Campus Cubatão**.

A arquitetura é baseada no padrão MVC (Model-View-Controller) utilizando tecnologias nativas do Java EE, como Servlets e JSP, com persistência em banco de dados relacional MySQL via JDBC.

---

## 👨‍💻 Integrantes 
* **Adriano Júnior de Souza Almeida** 
* **Arthur Lanzilotti Farjanes** 

---

## 🛠️ Tecnologias e Ferramentas Utilizadas

* **Linguagem:** Java
* **Tecnologias Web:** Java Server Pages (JSP), Java Servlets, JSTL (JavaServer Pages Standard Tag Library)
* **Banco de Dados:** MySQL 8.x
* **Gerenciador de Dependências:** Maven
* **Servidor de Aplicação:** Apache Tomcat 9.x (ou superior)


---

## 📂 Estrutura do Projeto

A organização dos diretórios do projeto segue o padrão estrutural do ecossistema Maven/Java Web:

```text
bookstore-crud/
├── src/
│   └── main/
│       ├── java/
│       │   └── net/
│       │       └── codejava/
│       │           └── book/
│       │               ├── Book.java          # Classe de Modelo (Java Bean)
│       │               ├── BookDAO.java       # Classe de Acesso a Dados (Lógica SQL/JDBC)
│       │               └── ControllerServlet.java # Controlador Principal (Intercepta Requisições)
│       ├── webapp/
│       │   ├── WEB-INF/
│       │   │   └── web.xml                    # Descritor de Implantação / Configuração do Servlet
│       │   ├── BookForm.jsp                   # Formulário de Cadastro e Edição de Livros
│       │   ├── BookList.jsp                   # Tela Principal de Listagem de Livros
│       │   └── Creditos.jsp                   # Página Especial de Créditos da Dupla (Diferencial)
└── database/
    └── script.sql                             # Script de Criação do Banco de Dados
