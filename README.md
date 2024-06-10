# Escola de Música Harmonia - Banco de Dados 🎼
Este repositório contém um projeto de banco de dados desenvolvido com o intuito de administrar e armazenar informações de alunos, professores e cursos oferecidos por uma escola musical.

## ➡️1- Cenário:
A Escola de Música Harmonia deseja um sistema de banco de dados para gerenciar suas operações diárias. O sistema deve permitir o cadastro e gerenciamento de informações sobre os alunos, professores, cursos, aulas e instrumentos musicais. Na elaboração no banco de dados, foi solicitado alguns critérios a serem seguidos.

No cadastro de alunos, deve conter:
* ID_Aluno (atributo chave)
* Nome (atributo simples)
* Endereço (atributo composto: Rua, Número, Cidade, Estado, CEP)
* Data_Nascimento
* Telefone (atributo multivalorado)
* Email
  
No cadastro de professores, deve conter:
* ID_Professor (atributo chave)
* Nome (atributo simples)
* Endereço (atributo composto: Rua, Número, Cidade, Estado, CEP)
* Telefone (atributo multivalorado)
* Email
* Salário (atributo derivado)
* Curso (relação com ID_Curso)
  
No armazenamento de informações sobre os cursos, deve conter:
* ID_Curso (atributo chave)
* Nome (atributo simples)
* Descrição
* Duração (em meses)
* Preço
  
No armazenamento de dados de aulas, deve conter:
* ID_Aula (atributo chave)
* Data
* Horário
* Local
* ID_Curso (atributo chave estrangeira)
* ID_Professor (atributo chave estrangeira)
  
Por fim, no registro de informações sobre os instrumentos musicais, deve conter:
* ID_Instrumento (atributo chave)
* Nome (atributo simples)
* Tipo
* Marca
* Preço (atributo derivado)

## ➡️2- Modelagem Conceitual:
Confira a modelagem conceitual desenvolvida:

![modelo](https://github.com/lautoledo/Escola-de-Musica-BD/blob/main/imagens/modelo-conceitual.png)

## ➡️3- Modelagem Lógica:
Confira a modelagem lógica desenvolvida:
![](https://github.com/lautoledo/Escola-de-Musica-BD/blob/main/imagens/modelo-l%C3%B3gico.png)

## ➡️4- Modelagem Física:
Confira a modelagem física desenvolvida em formato SQL:
[prova.sql](https://github.com/lautoledo/Escola-de-Musica-BD/blob/main/prova.sql)

## ➡️5- Inserção de dados:
Confira como ocorreu a inserção de dados nas tabelas:
### 🔸 Tabela "Aluno":
```sql
INSERT INTO Aluno (ID_Aluno, Nome, Rua, Numero, Cidade, Estado, CEP, Data_Nascimento, Telefone, Email)
VALUES
(1, 'João Silva', 'Rua A', '123', 'São Paulo', 'SP', '01001-000', '2000-01-01', '11999999999', 'joao@example.com'),
```

### 🔸 Tabela "Professor":
```sql
INSERT INTO Professor (ID_Professor, Nome, Rua, Numero, Cidade, Estado, CEP, Telefone, Email, Salário)
VALUES
(1, 'Carlos Pereira', 'Rua C', '789', 'Belo Horizonte', 'MG', '30001-000', '31999999999', 'carlos@example.com', 3500.00),
```

### 🔸 Tabela "Curso":
```sql
INSERT INTO Curso (ID_Curso, Nome, Descrição, Duração, Preço)
VALUES
(1, 'Violão Iniciante', 'Curso básico de violão', 6, 150.00),
```

### 🔸 Tabela "Aula":
```sql
INSERT INTO Aula (ID_Aula, Data, Horário, Local, ID_Curso, ID_Professor)
VALUES
(1, '2024-06-01', '10:00:00', 'Sala 101', 1, 1),
```

### 🔸 Tabela "Instrumento":
```sql
INSERT INTO Instrumento (ID_Instrumento, Nome, Tipo, Marca, Preço)
VALUES
(1, 'Violão', 'Cordas', 'Yamaha', 500.00),
```

### 🔸 Tabela "Aluno_Instrumento":
```sql
INSERT INTO Aluno_Instrumento (ID_Aluno, ID_Instrumento)
VALUES
(1, 1),
```

### 🔸 Tabela "Aluno_Curso":
```sql
INSERT INTO Aluno_Curso (ID_Aluno, ID_Curso)
VALUES
(1, 1),
```

## ➡️6- CRUD:
Confira o desenvolvimento CRUD:
* C - create
* R - read
* U - update
* D - delete

### 🔳CREATE:
```sql
INSERT INTO Aluno (ID_Aluno, Nome, Rua, Numero, Cidade, Estado, CEP, Data_Nascimento, Telefone, Email)
VALUES (21, 'Laura Beatriz', 'Rua E', '206', 'Porto Alegre', 'RS', '90001-000', '1995-05-15', '52999999999', 'laura@example.com');
```
Resultado:
![insert](https://github.com/lautoledo/Escola-de-Musica-BD/blob/main/imagens/insert.png)

### 🔳READ:
```sql
SELECT * FROM Aluno;
```
Resultado:
![select](https://github.com/lautoledo/Escola-de-Musica-BD/blob/main/imagens/select.png)

### 🔳UPDATE:
```sql
UPDATE Aluno SET Email = 'joao_novo@example.com' WHERE ID_Aluno = 1;
```
Resultado:
![update](https://github.com/lautoledo/Escola-de-Musica-BD/blob/main/imagens/update.png)

### 🔳DELETE:
```sql
DELETE FROM Aluno WHERE ID_Aluno = 3;
```
Resultado:
![delete](https://github.com/lautoledo/Escola-de-Musica-BD/blob/main/imagens/delete.png)

## ➡️7- Relatórios:

### 🟢 Alunos e seus Cursos:
Esta consulta tem como objetivo selecionar nomes de alunos e os cursos noos quais estão matriculados.
```sql
SELECT a.Nome AS Aluno, c.Nome AS Curso
FROM Aluno a
JOIN Aluno_Curso ac ON a.ID_Aluno = ac.ID_Aluno
JOIN Curso c ON ac.ID_Curso = c.ID_Curso;
```




