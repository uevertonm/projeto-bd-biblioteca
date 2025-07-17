# Modelo de Banco de Dados para Biblioteca

Este projeto contém o script SQL para criação de um banco de dados relacional que modela uma biblioteca, com tabelas para editoras, categorias, livros, autores, membros, telefones e empréstimos de livros.

## Estrutura do banco de dados:

* Tabela **Editora**: dados das editoras (nome, cidade, CNPJ).
* Tabela **Categoria**: categorias de livros com nome e descrição.
* Tabela **Livro**: informações dos livros, com relacionamentos para editoras e categorias.
* Tabela **Autor**: autores dos livros com nome e nacionalidade.
* Tabela **Livro_Autor**: relacionamento muitos-para-muitos entre livros e autores.
* Tabela **Membro**: dados dos membros da biblioteca.
* Tabela **Telefone**: telefones associados aos membros.
* Tabela **Emprestimo**: registro dos empréstimos de livros para membros.

## Como usar:

1. Execute o script SQL no seu sistema gerenciador de banco de dados (MySQL, MariaDB, etc.).
2. O script cria o banco `Biblioteca` e as tabelas com os relacionamentos necessários.

## Tecnologias utilizadas:

- MySQL
- Modelagem relacional
- Integridade referencial via chaves estrangeiras

## Licença:

Este projeto está licenciado sob a [Licença MIT](./LICENSE).
