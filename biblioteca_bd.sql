CREATE DATABASE Biblioteca;
USE Biblioteca;

CREATE TABLE Editora (
    id_editora INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cidade VARCHAR(255) NOT NULL,
    CNPJ VARCHAR(18) NOT NULL
);

CREATE TABLE Categoria (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT
);

CREATE TABLE Livro (
    id_livro INT PRIMARY KEY AUTO_INCREMENT,
    ISBN VARCHAR(13) NOT NULL,
    titulo VARCHAR(255) NOT NULL,
    ano_publicacao INT NOT NULL,
    id_editora INT,
    id_categoria INT,
    FOREIGN KEY (id_editora) REFERENCES Editora(id_editora),
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria)
);

CREATE TABLE Autor (
    id_autor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    nacionalidade VARCHAR(100)
);

CREATE TABLE Livro_Autor (
    id_livro INT,
    id_autor INT,
    PRIMARY KEY (id_livro, id_autor),
    FOREIGN KEY (id_livro) REFERENCES Livro(id_livro),
    FOREIGN KEY (id_autor) REFERENCES Autor(id_autor)
);

CREATE TABLE Membro (
    id_membro INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    CEP VARCHAR(9) NOT NULL,
    rua VARCHAR(255) NOT NULL,
    numero VARCHAR(10) NOT NULL,
    complemento VARCHAR(255)
);

CREATE TABLE Telefone (
    id_telefone INT PRIMARY KEY AUTO_INCREMENT,
    numero VARCHAR(15) NOT NULL,
    tipo VARCHAR(50),
    id_membro INT,
    FOREIGN KEY (id_membro) REFERENCES Membro(id_membro)
);

CREATE TABLE Emprestimo (
    id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE,
    id_membro INT,
    id_livro INT,
    FOREIGN KEY (id_membro) REFERENCES Membro(id_membro),
    FOREIGN KEY (id_livro) REFERENCES Livro(id_livro)
);
